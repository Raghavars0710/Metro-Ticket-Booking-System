class Train < ApplicationRecord
    belongs_to :metro_service
    has_many :tickets
    
    # default_scope -> { order(created_at: :asc) }
end
