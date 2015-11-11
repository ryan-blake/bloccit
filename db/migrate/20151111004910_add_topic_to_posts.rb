class AddTopicToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :topic_id, :integer
    add_index :posts, :topic_id
  end
end


#"Add" + [table whose id we to add] + "To" + [table we want to add the foreign key to]
