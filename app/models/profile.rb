class Profile < ApplicationRecord
	extend Devise::Models
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :trackable, :validatable,
		authentication_keys: [:email]


  #has_many :motors
  has_many :adds
  has_many :reviews

	def average_rating
	 self.reviews.any? ? self.reviews.average(:rating).round(1) : 0
	end











end