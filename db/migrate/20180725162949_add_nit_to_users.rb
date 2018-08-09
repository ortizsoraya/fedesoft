class AddNitToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :nit, :string
  end
end
