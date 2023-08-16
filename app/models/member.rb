class Member < ApplicationRecord
  belongs_to :user

  enum role: {Passenger: 0, Employee: 1,Admin: 2}
  enum gender: {male: 0, female: 1,other: 2}

  validates :name, presence: true, length: { minimum: 2 },uniqueness: true
  validates :contact_number, numericality:true , length: { is: 10 }
  validates :gender, inclusion: { in: ['male', 'female', 'other'], message: "must be male, female, or other" }
end
