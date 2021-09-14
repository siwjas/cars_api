class Car < ApplicationRecord
  belongs_to :manufacturer
  validates :manufacturer, :name, :year, :price,
  presence: true
end
