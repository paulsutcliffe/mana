class CreateProductos < ActiveRecord::Migration
  def change
    create_table :productos do |t|
      t.string :nombre
      t.float :precio_en_oferta, default: 0, null: false
      t.float :precio_normal, default: 0, null: false
      t.string :codigo
      t.string :foto
      t.integer :categoria_id

      t.timestamps
    end
  end
end
