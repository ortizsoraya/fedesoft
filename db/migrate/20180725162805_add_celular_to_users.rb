class AddCelularToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :celular, :string
  end
end
