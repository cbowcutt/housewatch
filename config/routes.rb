Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/', to: 'resolutions#index'
  get '/resolutions/index', to: 'resolutions#index'
  get '/resolutions/:id', to: 'resolutions#show'
  
end
