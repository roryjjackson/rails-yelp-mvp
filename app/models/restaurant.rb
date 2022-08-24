class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  DEFAULT_CATEGORIES = [ "chinese", "italian", "japanese", "french", "belgian" ]
  validates :name, :category, :address, presence: true
  validates :category, inclusion: { in: DEFAULT_CATEGORIES }
  validates :phone_number, presence: true
end
