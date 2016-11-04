class CustomTag
  include Mongoid::Document
  field :emotion, type: String
  field :price, type: String
  field :service, type: String
  field :quality, type: String
  field :scenery, type: String
end
