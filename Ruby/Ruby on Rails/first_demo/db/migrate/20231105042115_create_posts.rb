# Migration sets up the database tables 
# Rails automatically add timestamps for created at and updated at
# THe migrate would be connected to post model 
class CreatePosts < ActiveRecord::Migration[7.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
