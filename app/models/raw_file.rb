class RawFile
  include Mongoid::Document
  field :file_name, type: String
  field :period, type: Time
  embeds_many :column_names
  has_many :row_contents
end
