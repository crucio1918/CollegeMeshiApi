class CreateDishes < ActiveRecord::Migration[6.0]
  def change
    create_table :dishes do |t|
      t.float :time
      t.integer :good
      t.integer :cooked

      t.timestamps
    end
  end
end
