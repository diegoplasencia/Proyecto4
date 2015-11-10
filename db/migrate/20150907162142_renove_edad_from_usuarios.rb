class RemoveEdadFromUsuarios < ActiveRecord::Migration
  def change
  	  remove_colum :usuarios, :edad, :integer
  end
end
