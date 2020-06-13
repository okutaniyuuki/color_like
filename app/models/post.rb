class Post < ApplicationRecord

has_many :favorites
has_many :bookmarks
has_many :maker_janrus
has_many :color_janrus

belongs_to :user

attachment :post_image
end
