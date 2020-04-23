class CreateEstudia < ActiveRecord::Migration[5.2]
  def change
    create_table :estudia do |t|
      t.string :nombre
      t.string :categoria
      t.string :descripcion
      t.string :ubicacion
      t.string :sede
      t.string :carreras
      t.string :modo
      t.string :nivel

      t.timestamps
    end
  end
end
