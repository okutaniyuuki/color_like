class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :posts, through: :bookmarks
  has_many :favorites
  has_many :bookmarks

  attachment :image, destroy: false

 end
