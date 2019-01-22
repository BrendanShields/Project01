class AddCommentableIdToReplies < ActiveRecord::Migration[5.2]
  def change
    add_column :replies, :commentable_id, :integer
  end
end
