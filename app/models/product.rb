class Product < ApplicationRecord
  validates :title, presence: true

  belongs_to :company

  scope :active, -> { joins(:company).where(active: true, companies: { active: true }) }
  scope :by_title, -> (query) { where('title ILIKE ?', "%#{query}%") }

  class << self
    def search(search)
      if search
        by_title(search)
      else
        all
      end
    end
  end
end
