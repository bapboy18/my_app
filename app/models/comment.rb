class Comment
  include Mongoid::Document
  field :key, type: String
  field :value, type: String
  embedded_in :row_content
end
