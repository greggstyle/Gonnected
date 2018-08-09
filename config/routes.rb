Rails.application.routes.draw do
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'about',           to: 'pages#about',      as: :about
  get 'contact',         to: 'pages#contact',    as: :contact
  # get 'messages',         to: 'messages#new',
  # post 'messages',        to: 'messages#create',
  get 'contact-me',      to: 'messages#new', as: 'new_message'
  post 'contact-me',     to: 'messages#create', as: 'create_message'
end
