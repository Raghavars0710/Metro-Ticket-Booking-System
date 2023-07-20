class User < ApplicationRecord

	enum role: {Passenger: 0, Employee: 1, Admin: 2}
	enum gender: {Male: 0, Female: 1, Other: 2}

	has_many :members ,dependent: :destroy

end

