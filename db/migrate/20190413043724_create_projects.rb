class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :display_name, null: false
      t.string :key_hash, null: false

      t.timestamps
    end
  end
end
