Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :mta

  get '/currentFeed/:id', to: 'mta#currentFeed'
end
