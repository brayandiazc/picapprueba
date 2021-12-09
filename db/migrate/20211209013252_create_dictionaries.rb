class CreateDictionaries < ActiveRecord::Migration[6.1]
  def change
    create_table :dictionaries do |t|
      t.string :name, null: false
      t.text :description, null: false
      t.references :fruit, null: false, foreign_key: true
      t.references :pet, null: false, foreign_key: true

      t.timestamps
    end
  end
end
