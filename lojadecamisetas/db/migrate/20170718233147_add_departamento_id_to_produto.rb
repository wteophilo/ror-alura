class AddDepartamentoIdToProduto < ActiveRecord::Migration[5.0]
  def change
    add_column :produtos, :departament_id, :integer
  end
end
