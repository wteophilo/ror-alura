class RenameColumnDepartamentIdToDepartamentoId < ActiveRecord::Migration[5.0]
  def change
      rename_column :produtos, :departament_id, :departamento_id
  end
end
