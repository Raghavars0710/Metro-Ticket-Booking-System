class User < ApplicationRecord
  before_save :downcase_gender

  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable, :confirmable

  has_many :members , dependent: :destroy
  has_many :tickets , dependent: :destroy

  validates :name, presence: true, length: { minimum: 2 },uniqueness: true
  validates :contact_number, presence: true, uniqueness: true, length: { is: 10 }
  validates :gender, presence: true, inclusion: { in: ['male', 'female', 'other'], message: "must be male, female, or other" }


  private

  def downcase_gender
    self.gender = gender.downcase if gender.present?
  end
end
