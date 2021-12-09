class CreateFruits < ActiveRecord::Migration[6.1]
  def change
    create_table :fruits do |t|
      t.string :name, null: false
      t.text :description, null: false

      t.timestamps
    end
  end
end
