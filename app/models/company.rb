class Company < ApplicationRecord
  attr_accessor :title, :active

  validates :title, presence: true
  scope :active, -> { where(active: true) }
end
