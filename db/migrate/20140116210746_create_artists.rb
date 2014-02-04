class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.integer :split_id
      t.string :name

      t.timestamps
    end
  end
end
