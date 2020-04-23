class CreateTrabajas < ActiveRecord::Migration[5.2]
  def change
    create_table :trabajas do |t|

      t.timestamps
    end
  end
end
