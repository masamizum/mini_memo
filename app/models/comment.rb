class Comment < ApplicationRecord
  belongs_to :memo  # memosテーブルとのアソシエーション
  belongs_to :user  # usersテーブルとのアソシエーション
end
