class ManufacturerSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :cars
end
