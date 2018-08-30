Rails.application.routes.draw do
  get 'home/index'
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'about',          to: 'pages#about',        as: :about
  get 'contact',        to: 'pages#contact',      as: :contact

resources :home, only: [:index, :new, :create]

end
