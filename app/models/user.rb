class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :bookmarks
  has_many :posts
  has_many :favorites

  attachment :image, destroy: false

  validates :last_name, presence: true
  validates :first_name, presence: true


 end
