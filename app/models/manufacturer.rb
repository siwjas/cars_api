class Manufacturer < ApplicationRecord
  has_many :cars, dependent: :destroy
  validates :name, presence: true, 
  uniqueness: { case_sensitive: false }
end
