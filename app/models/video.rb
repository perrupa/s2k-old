class Video < ActiveRecord::Base
	has_many :video_participants, 
		:class_name => "VideoParticipant",
		:foreign_key => "video_id"
	has_many :crews, 
		:through => :video_participants,
		:readonly => true
	has_many :bboys, 
		:through => :video_participants,
		:readonly => true

	def add_participant(bboy, crew)
		if bboy != nil || bboy.id? || crew != nil || crew.id? || video != nil || video.id?
			participant = VideoParticipant.create(:bboy_id => bboy.id, :crew_id => crew.id, :video_id => self.id)
			participant.save
		elsif bboy == nil || crew == nil || video == nil 
			raise ArgumentError, "Video, Bboy and Crew can not be nil " 
		elsif bboy.id? || crew.id? || video.id?
			raise ArgumentError, "Video, Bboy and Crew must have ids" 
		end
	end
	
	def to_html(height=390, width=640)
		return 
		"<iframe 
			class='youtubeFrame'
			title='YouTube video player' 
			width='#{width}' 
			height='#{height}' 
			src='http://www.youtube.com/embed/#{self.youtubeID}' 
			frameborder='0'
			allowfullscreen>
		</iframe>".html_safe
	end
	
end
