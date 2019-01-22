class AddCommentableTypeToReplies < ActiveRecord::Migration[5.2]
  def change
    add_column :replies, :commentable_type, :string
  end
end
