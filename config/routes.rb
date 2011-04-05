S2k::Application.routes.draw do
	
	root :to => "videos#index"

	devise_for :users

	resources :videos
	resources :crews
	resources :bboys
	resources :video_participants

end
