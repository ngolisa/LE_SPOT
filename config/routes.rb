Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get '/myspots', to: 'spots#my'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :spots do
  end



  resources :reservations, only: [:create, :index, :show, :destroy]  do
    member do
      post 'changestatus'
    end
  end
end
