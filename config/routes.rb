Rails.application.routes.draw do
  get '/' => 'site#index'
  get '/search' => 'search#index'
  resources :songs
  resources :movies
end
