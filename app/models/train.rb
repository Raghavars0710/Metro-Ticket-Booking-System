class Train < ApplicationRecord
    # belongs_to :metro_service

    has_many :tickets, dependent: :destroy
    has_many :users, through: :tickets, dependent: :destroy

    # default_scope -> { order(created_at: :asc) }
end
