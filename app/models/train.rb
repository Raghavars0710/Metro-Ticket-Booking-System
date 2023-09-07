class Train < ApplicationRecord
  belongs_to :metro_service
  has_many :tickets, dependent: :destroy

  before_validation :normalize_name

  validates :name, presence: true, uniqueness: { case_sensitive: false }
  validates :train_number, presence: true, uniqueness: true, numericality: true

  self.per_page = 5

  private

  def normalize_name    # Normalize train name by capitalizing the first letter
    self.name = name.capitalize if name.present?
  end
end
