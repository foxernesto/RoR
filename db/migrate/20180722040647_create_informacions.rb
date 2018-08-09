class CreateInformacions < ActiveRecord::Migration[5.2]
  def change
    create_table :informacions do |t|
      t.string :nombre_tecnico, limit: 20
      t.text :descripcion
      t.text :nombre_altenativo
      t.text :via_consumo
      t.text :efectos
      t.string :link
      t.boolean :activo

      t.timestamps
    end
    add_index :informacions, :nombre_tecnico, unique: true
  end
end
