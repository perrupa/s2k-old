module ApplicationHelper
	def facebook_like
		content_tag :iframe, nil, :src => "http://www.facebook.com/plugins/like.php?href=#{CGI::escape(request.url)}&layout=standard&show_faces=true&width=300&action=like&font=arial&colorscheme=light", :scrolling => 'no', :frameborder => '0', :allowtransparency => true, :id => :facebook_like, :overflow => 'hidden', :height => 24
	end	
end
