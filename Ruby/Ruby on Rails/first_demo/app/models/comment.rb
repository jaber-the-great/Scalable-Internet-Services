class Comment < ApplicationRecord
  belongs_to :post
  # for making it live (update all the open tabs)
  broadcasts_to :post
end
