Rails.application.routes.draw do
  
  get 'picture/index'

  root 'welcome#index'
  
  resources :articles do
  	resources :comments
	end 

  resources :articles do
  	resources :pictures
	end 

get 'about', to: 'about#about', as: 'about'
	
end
