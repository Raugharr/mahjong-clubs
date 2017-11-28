Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :clubs do
  	resources :rules do
	end
	resources :schedules do
	end
  end
#	get '/clubs/:id/rules/', to: 'rules#index', as: 'rules'
 # get '/clubs/:id/schedule', to: 'clubs#schedule' 
  #get '/clubs/:id/rules', to: 'clubs#rules' 
end
