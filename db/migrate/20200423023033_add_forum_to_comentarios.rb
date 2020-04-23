class AddForumToComentarios < ActiveRecord::Migration[5.2]
  def change
    add_column :comentarios, :forum_id, :integer
  end
end
