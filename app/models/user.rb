class User < ApplicationRecord
  include Likeable

  has_person_name
  pay_customer
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :tweets
  has_many :comments
  
  validates_uniqueness_of :username

  has_one_attached :profile_image
end
