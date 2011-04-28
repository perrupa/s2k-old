class Bboy < ActiveRecord::Base
	has_many :video_participants, 
		:class_name => "VideoParticipant",
		:foreign_key => "bboy_id"
	has_many :videos, 
		:through => :video_participants,
		:readonly => true
	has_and_belongs_to_many :crews
		
	def battled_with
		#vpList = VideoParticipant.find_by_bboy_id(self.id)
		self.video_participants.collect(&:crew)
	end
end
