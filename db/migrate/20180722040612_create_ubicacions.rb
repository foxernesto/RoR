class CreateUbicacions < ActiveRecord::Migration[5.2]
  def change
    create_table :ubicacions do |t|
      t.string :sitio, limit: 20
      t.float :latitud
      t.float :longitud
      t.boolean :activo

      t.timestamps
    end
    add_index :ubicacions, :sitio, unique: true
  end
end
