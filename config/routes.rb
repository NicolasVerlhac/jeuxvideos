Rails.application.routes.draw do

  get 'about', to: 'pages#about', as: :about
  get 'contact', to: 'pages#contact', as: :contact

  get 'videogames', to: 'videogames#index'

  devise_for :users, controllers: { registrations: "registrations" }
  resources :users, only: [:index, :show]


  root to: 'pages#home'

  resources :users do
    resources :videogames
  end

  # devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
