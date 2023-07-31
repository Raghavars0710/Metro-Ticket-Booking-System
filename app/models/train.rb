class Train < ApplicationRecord
    belongs_to :metro_service
    has_many :tickets

    self.per_page = 5
end
