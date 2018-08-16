Rails.application.routes.draw do
  
	root 'films#index'
	resources :films do
		resources :comments
	end
	resources :genres
end
