class Product < ApplicationRecord
  validates :title, presence: true

  belongs_to :company

  scope :active, -> { joins(:company).where(active: true, companies: { active: true }) }
end
