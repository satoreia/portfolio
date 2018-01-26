class Dropin < ApplicationRecord
	belongs_to :staff

	validates :time, :price, presence: true
end
