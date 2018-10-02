Rails.application.routes.draw do
  get 'trips/index'
  get 'trips/show'
  resources :drivers

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
