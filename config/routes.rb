Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :spots do
  end

  get '/myspots', to: 'spots#my'

  resources :reservations, only: [:create, :index, :show, :destroy]
end
