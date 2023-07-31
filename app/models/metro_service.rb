class MetroService < ApplicationRecord
	has_many :trains

	self.per_page = 5
end
