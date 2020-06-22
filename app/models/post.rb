class Post < ApplicationRecord

has_many :favorites
has_many :bookmarks, dependent: :destroy


belongs_to :user

attachment :post_image

  def favorited_by?(user)
    favorites.where(user_id: user.id).exists?
  end

   def self.search(search)
      if search
        Post.where(['content LIKE ?', "%#{:maker_janru_id}%", 'content LIKE ?', "%#{:color_janru_id}%"])
      else
        Post.all
      end
    end

    def bookmark_by?(user)
    	bookmarks.where(user_id: user.id).exists?
    end
end

