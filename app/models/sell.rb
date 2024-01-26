class Sell < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :products
  validates :created_at
  validates :total
end
