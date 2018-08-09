Rails.application.routes.draw do
  resources :informacions
  resources :video_intitucionals
  resources :ubicacions
  resources :ayuda_localidads
  resources :testimonios
  root 'home#index'
  get 'home/index'

  
  namespace :api do
    resources :informacions 
  end
  resources :informacions, only: [:index, :create, :destroy, :update, :show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
