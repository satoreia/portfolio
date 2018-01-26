class Staff < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :news, :dependent => :destroy
  has_many :blogs
  has_many :abouts
  has_many :questions
  has_many :dropins
  has_many :packs
end
