class Member < ApplicationRecord

	enum role: {Passenger: 0, Employee: 1,Admin: 2}
	enum gender: {Male: 0, Female: 1,other: 2}
end
