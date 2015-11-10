class AddFechanacimientoToUsuarios < ActiveRecord::Migration
  def change
    add_column :usuarios, :fechanacimiento, :date
  end
end
