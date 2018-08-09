class AddLocalidadToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :localidad, :integer
  end
end
