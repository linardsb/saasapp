Rails.application.routes.draw do
  root to: 'pages#home'
  devise_for :users, controllers: { regstrations: 'users/registrations'}
  resources :users do
    resource :profile
  end
  get 'about', to: 'pages#about'
  resources :contacts, only: :create
  get 'contact-me', to: 'contacts#new', as: 'new_contact' 
end
