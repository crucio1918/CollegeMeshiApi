class CreateTaggers < ActiveRecord::Migration[6.0]
  def change
    create_table :taggers do |t|
      t.belongs_to :dish
      t.belongs_to :tag

      t.timestamps
    end
  end
end
