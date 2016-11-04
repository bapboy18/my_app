class RowContent
  include Mongoid::Document
  field :file_name, type: String
  field :row_number, type: Integer
  embeds_many :comments
  belongs_to :raw_file

  class << self
    def import file
      spreadsheet = open_spreadsheet file
      header = spreadsheet.row(1)

      raw_file = RawFile.create file_name: file, period: Time.now
      header.each do |column|
        raw_file.column_names.create name: column
      end

      (2..spreadsheet.last_row).each do |i|
        row_content = RowContent.new row_number: i - 1,
          file_name: file.original_filename, raw_file: raw_file

        row = Hash[[header, spreadsheet.row(i)].transpose]
        row.each do |key, value|
          row_content.comments.build key: key, value: value
        end
        row_content.save
      end
    end

    def open_spreadsheet file
      case File.extname(file.original_filename)
      when '.csv' then Csv.new(file.path, nil, :ignore)
      when '.xls' then Roo::Excel.new(file.path)
      when '.xlsx' then Roo::Excelx.new(file.path)
      else raise "Unknown file type: #{file.original_filename}"
      end
    end
  end
end
