class CreateDiscos < ActiveRecord::Migration
  def change
    create_table :discos do |t|
      t.string :name
      t.text :description
      t.integer :price
      t.integer :year
      t.string :state
      t.string :local

      t.timestamps null: false
    end
  end
end
