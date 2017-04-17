Rails.application.routes.draw do
  get 'topics_controller/index'
  root 'topics#index'
  resources :topics
  resources :rants
 
  get 'rants_controller/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
