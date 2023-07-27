class MetroService < ApplicationRecord
	enum source: {Airport_metro_station: 0, Super_corridor_metro_station: 1, Love_kush_metro_station: 2,MR_10_metro_station: 3 ,Sukhliya_metro_station: 4, Bapat_metro_station: 5, Vijay_nagar_metro_station: 6}
	enum destination: {Airport_metro: 0, Super_corridor_metro: 1, Love_kush_metro: 2,MR_10_metro: 3 ,Sukhliya_metro: 4, Bapat_metro: 5, Vijay_nagar_metro: 6}
    belongs_to :user
	# has_many :trains, dependent: :destroy
end
