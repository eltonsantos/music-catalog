class AddCategoriaRefToDiscos < ActiveRecord::Migration
  def change
  	add_column :discos, :categoria_id, :integer
  end
end
