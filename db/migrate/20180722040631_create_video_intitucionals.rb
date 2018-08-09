class CreateVideoIntitucionals < ActiveRecord::Migration[5.2]
  def change
    create_table :video_intitucionals do |t|
      t.string :nombre, limit: 20
      t.string :descripcion
      t.string :link
      t.boolean :activo

      t.timestamps
    end
    add_index :video_intitucionals, :nombre, unique: true
  end
end
