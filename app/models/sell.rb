class Sell < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :products, dependent: :destroy
  validates :total, presence: true
end
