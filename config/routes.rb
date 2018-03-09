Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :settings, only: [:index]
  resources :clubs do
  	resources :rules do
	end
	resources :schedules do
	end
  end
  root 'clubs#index'
#	get '/clubs/:id/rules/', to: 'rules#index', as: 'rules'
 # get '/clubs/:id/schedule', to: 'clubs#schedule' 
  #get '/clubs/:id/rules', to: 'clubs#rules' 
end
