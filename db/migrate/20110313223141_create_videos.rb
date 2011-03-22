class CreateVideos < ActiveRecord::Migration
  def self.up
    create_table :videos do |t|
      t.string :youtubeID
      t.string :title
      t.string :description

      t.timestamps
    end
  end

  def self.down
    drop_table :videos
  end
end
