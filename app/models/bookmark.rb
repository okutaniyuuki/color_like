class Bookmark < ApplicationRecord
belongs_to :post
belongs_to :user

attachment :post_image
#最後に＃外す
#validates :user_id, uniqueness: { scope: :board_id } # 追加
end
