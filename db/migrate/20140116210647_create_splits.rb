class CreateSplits < ActiveRecord::Migration
  def change
    create_table :splits do |t|
      t.float :total

      t.timestamps
    end
  end
end
