class Bookmark < ApplicationRecord
belongs_to :post
belongs_to :user

attachment :post_image


end
