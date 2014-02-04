class CreateAmounts < ActiveRecord::Migration
  def change
    create_table :amounts do |t|
      t.integer :artist_id
      t.float :percent
      t.float :amount

      t.timestamps
    end
  end
end
