Rails.application.routes.draw do
  get '/' => 'site#index'
  get '/search' => 'search#index'
  resources :movies
  resources :artists do
  	resources :albums do
  		resources :songs
  	end
  end
end
