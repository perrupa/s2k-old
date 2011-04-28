class VideoParticipant < ActiveRecord::Base
	validates_presence_of :bboy_id, :crew_id, :video_id

	belongs_to :bboy, 
		:class_name => "Bboy", 
		:foreign_key => "bboy_id"
	belongs_to :crew,
		:class_name => "Crew", 
		:foreign_key => "crew_id"
	belongs_to :video,
		:class_name => "Video", 
		:foreign_key => "video_id"
		
	def bboy_name
		self.bboy.name if bboy
	end
	
	def bboy_name=(name)
		self.bboy = Bboy.find_or_create_by_bboyName(name) unless name.blank?
	end
	
	def crew_name
		self.crew.name if crew
	end
	
	def crew_name=(name)
		self.crew = Crew.find_or_create_by_name(name) unless name.blank?
	end
	
end
