class Post < ApplicationRecord
  # Adding validation to the posts. The function name is specific, no space before title is important
  validates_presence_of :title
  has_rich_text :content
  has_many :comments
end
