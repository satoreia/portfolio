class Blog < ApplicationRecord
	belongs_to :staff

	attachment :blog_image
end
