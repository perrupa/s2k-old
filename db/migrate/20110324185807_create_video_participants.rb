class CreateVideoParticipants < ActiveRecord::Migration
  def self.up
    create_table :video_participants do |t|
      t.integer :bboy_id
      t.integer :video_id
      t.integer :crew_id

      t.timestamps
    end
  end

  def self.down
    drop_table :video_participants
  end
end
