module VideosHelper
	def youtube_thumbnail(video)
		 image_tag("http://img.youtube.com/vi/#{video.youtubeID}/0.jpg", :alt => video.title)
	end
end