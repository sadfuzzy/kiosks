class Company < ApplicationRecord
  validates :title, presence: true

  has_many :products

  scope :active, -> { where(active: true) }
end
