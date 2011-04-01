class VideoParticipant < ActiveRecord::Base
	belongs_to :bboy, 
		:class_name => "Bboy", 
		:foreign_key => "bboy_id"
	belongs_to :crew,
		:class_name => "Crew", 
		:foreign_key => "crew_id"
	belongs_to :video,
		:class_name => "Video", 
		:foreign_key => "video_id"
end
