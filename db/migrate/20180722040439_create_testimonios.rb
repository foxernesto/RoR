class CreateTestimonios < ActiveRecord::Migration[5.2]
  def change
    create_table :testimonios do |t|
      t.string :nombre, limit: 20
      t.string :descripcion
      t.string :link
      t.boolean :activo

      t.timestamps
    end
    add_index :testimonios, :nombre, unique: true
  end
end
