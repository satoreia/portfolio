class About < ApplicationRecord
	belongs_to :staff

	validates :title, :body, presence: true
end
