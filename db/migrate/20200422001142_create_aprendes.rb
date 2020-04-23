class CreateAprendes < ActiveRecord::Migration[5.2]
  def change
    create_table :aprendes do |t|

      t.timestamps
    end
  end
end
