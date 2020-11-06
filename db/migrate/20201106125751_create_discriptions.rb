class CreateDiscriptions < ActiveRecord::Migration[6.0]
  def change
    create_table :descriptions do |t|
      t.string :type
      t.string :text
      t.integer :time
      t.integer :step

      t.belongs_to :dish

      t.timestamps
    end
  end
end
