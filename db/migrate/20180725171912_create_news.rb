class CreateNews < ActiveRecord::Migration[5.0]
  def change
    create_table :news do |t|
      t.string :name
      t.string :description
      t.string :picture
      t.datetime :date

      t.timestamps
    end
  end
end
