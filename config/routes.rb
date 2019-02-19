Rails.application.routes.draw do
  root 'black_fridays#index'
  resources :black_fridays
  resources :homes
  resources :pples
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
