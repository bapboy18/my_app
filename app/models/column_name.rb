class ColumnName
  include Mongoid::Document
  field :name, type: String
  embedded_in :raw_file
end
