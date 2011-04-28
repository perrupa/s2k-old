module VideosHelper
	def youtube_thumbnail(video)
		 image_tag("http://img.youtube.com/vi/#{video.youtubeID}/1.jpg", :alt => video.title)
	end
end
