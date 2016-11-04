class Mirror
  include Mongoid::Document
  field :file_name, type: String
  field :number_column, type: Integer
  embeds_many :child_tags
end
