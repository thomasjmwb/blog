Rails.application.routes.draw do
  
  get 'images/index'

  get 'images/create'

  root 'welcome#index'
  
  resources :articles do
  	resources :comments
	end 

	resources :images, only: [:index, :create]
  	root to: "images#index"

get 'about', to: 'about#about', as: 'about'
	
end
