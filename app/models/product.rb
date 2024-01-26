class Product < ApplicationRecord
  has_and_belongs_to_many :sells
  validates :name, presence: true
  validates :price, presence: true
  has_one_attached :photo
end
