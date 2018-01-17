class Staff < ApplicationRecord
	has_many :blogs
	has_many :news
end
