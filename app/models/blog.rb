class Blog < ApplicationRecord
	belongs_to :staff

	attachment :blog_image

	validates :title, :body, :blog_image, :contributor, presence: true
end
