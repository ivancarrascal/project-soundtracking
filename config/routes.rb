Rails.application.routes.draw do
  get '/' => 'site#index'
  resources :songs
  resources :movies
end
