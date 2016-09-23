Rails.application.routes.draw do
  
  root 'welcome#index'
  
  resources :articles do
  	resources :comments
	end 

get 'about', to: 'about#about', as: 'about'
	
end
