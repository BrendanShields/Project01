class AddUserImageToImages < ActiveRecord::Migration[5.2]
  def change
    add_column :images, :user_image, :string
  end
end
