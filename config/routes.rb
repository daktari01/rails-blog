Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Default route
  root 'posts#index', as: 'home'

  # Normal route
  get 'about' => 'pages#about', as: 'about'

  # Resource
  resources :posts do
    resources :comments
  end
end
