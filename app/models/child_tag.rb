class ChildTag
  include Mongoid::Document
  field :key, type: String
  field :value, type: String
  embedded_in :mirror
end
