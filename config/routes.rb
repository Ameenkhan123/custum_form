Rails.application.routes.draw do


  get 'home/new_message'

  post 'home/create_message'
	
	root 'home#index'


# without model g and controller g are use this file 
# get '/about_us' => 'home#about_us'
# post 'home/create_about_us'

get '/message' => 'home#create_message'
post 'home/create_message'

resources :messages
	
	resources :home
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
