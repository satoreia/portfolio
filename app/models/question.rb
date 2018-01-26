class Question < ApplicationRecord
	belongs_to :staff

	validates :question, :answer, presence: true
end
