class CreateAyudaLocalidads < ActiveRecord::Migration[5.2]
  def change
    create_table :ayuda_localidads do |t|
      t.string :mensaje

      t.timestamps
    end
  end
end
