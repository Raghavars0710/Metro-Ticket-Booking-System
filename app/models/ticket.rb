class Ticket < ApplicationRecord
  belongs_to :user
  belongs_to :train

  before_validation :set_default_book_time, on: :create

  validates :book_time, presence: true
  validates :book_date, presence: true
  validates :price, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :train_id, presence: true
  validates :user_id, presence: true

  private

  def set_default_book_time
    self.book_time ||= Time.now
  end
end
