class ChangeDiscosPriceForDecimal < ActiveRecord::Migration
  def change
  	remove_column :discos, :price
  	add_column :discos, :price, :decimal, :precision => 8, :scale => 2
  end
end
