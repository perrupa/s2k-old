class Crew < ActiveRecord::Base
	has_and_belongs_to_many :bboys
	has_many :video_participants, 
		:class_name => "VideoParticipant",
		:foreign_key => "crew_id"
	has_many :videos, 
		:through => :video_participants,
		:readonly => true

end
