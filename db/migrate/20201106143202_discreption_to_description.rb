class DiscreptionToDescription < ActiveRecord::Migration[6.0]
  def change
    rename_table :descriptions, :descriptions
  end
end
