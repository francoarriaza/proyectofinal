class AddTextToComentarios < ActiveRecord::Migration[5.2]
  def change
    add_column :comentarios, :text, :string
  end
end
