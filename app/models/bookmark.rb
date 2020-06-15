class Bookmark < ApplicationRecord
belongs_to :post
belongs_to :user

validates :user_id, uniqueness: { scope: :board_id } # 追加
end
