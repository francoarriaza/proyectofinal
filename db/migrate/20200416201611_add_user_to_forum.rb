class AddUserToForum < ActiveRecord::Migration[5.2]
  def change
    add_column :forums, :user_id, :integer
  end
end
