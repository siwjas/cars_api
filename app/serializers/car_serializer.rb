class CarSerializer < ActiveModel::Serializer
  attributes :id, :name, :engine, :cambio, :fuel, :price, :year
  belongs_to :manufacturer
end
