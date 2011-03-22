class CreateBboys < ActiveRecord::Migration
  def self.up
    create_table :bboys do |t|
      t.string :name
      t.string :bboyName

      t.timestamps
    end
  end

  def self.down
    drop_table :bboys
  end
end
