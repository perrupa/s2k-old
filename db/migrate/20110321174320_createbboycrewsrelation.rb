class Createbboycrewsrelation < ActiveRecord::Migration
  def self.up
    create_table :bboys_crews, :id => false do |t|
      t.integer :bboy_id
      t.integer :crew_id
    end
  end

  def self.down
    drop_table :bboys_crews
  end
end
