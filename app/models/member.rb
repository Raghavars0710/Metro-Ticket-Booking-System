class Member < ApplicationRecord
    #associations
	belongs_to :user

	enum role: {Passenger: 0, Employee: 1,Admin: 2}
	enum gender: {Male: 0, Female: 1,other: 2}
   
    validates :name, presence: true, length: { minimum: 2 },uniqueness: true
end
