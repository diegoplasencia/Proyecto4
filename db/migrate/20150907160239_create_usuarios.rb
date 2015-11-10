class CreateUsuarios < ActiveRecord::Migration
  def change
    create_table :usuarios do |t|
      t.string :nombre
      t.string :apellido
      t.string :correo
      t.integer :edad

      t.timestamps
    end
  end
end
