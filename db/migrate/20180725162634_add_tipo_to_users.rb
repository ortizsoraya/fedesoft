class AddTipoToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :tipo, :string
  end
end
