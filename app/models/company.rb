class Company < ApplicationRecord
  validates :title, presence: true
  scope :active, -> { where(active: true) }
end
