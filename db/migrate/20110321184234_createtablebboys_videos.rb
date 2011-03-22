class CreatetablebboysVideos < ActiveRecord::Migration
  def self.up
    create_table :bboys_videos, :id => false do |t|
      t.integer :bboy_id
      t.integer :video_id
    end
  end

  def self.down
    drop_table :bboys_videos
  end
end
