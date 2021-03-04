class Room < ApplicationRecord
  # チャット機能---------------
  has_many :user_rooms
  has_many :chats
  # ---------------------------
end
