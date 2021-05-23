Rails.application.routes.draw do
  root to: 'pages#home'
  resources :cocktails, only: [:index, :show] do
  end
      resources :ingredients, only: [:show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
