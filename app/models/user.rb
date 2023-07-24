class User < ApplicationRecord

	enum role: {Passenger: 0, Employee: 1, Admin: 2}
	enum gender: {Male: 0, Female: 1, Other: 2}

	validates :name, uniqueness: true
	validates :email, uniqueness: true

	has_many :members ,dependent: :destroy

	has_many :tickets ,dependent: :destroy
	has_many :trains, through: :tickets, dependent: :destroy
end

