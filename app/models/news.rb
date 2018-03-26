class News < ApplicationRecord
	belongs_to :staff

	validates :title, :body, :contributor, presence: true
end
