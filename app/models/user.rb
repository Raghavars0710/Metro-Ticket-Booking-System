class User < ApplicationRecord

	enum role: {Passenger: 0, Employee: 1,Admin: 2}

end

