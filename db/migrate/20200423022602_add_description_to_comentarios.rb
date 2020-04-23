class AddDescriptionToComentarios < ActiveRecord::Migration[5.2]
  def change
    add_column :comentarios, :description, :string
  end
end
