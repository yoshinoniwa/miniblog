Rails.application.routes.draw do
  root 'posts#index'

  resources :users do
  end
  resources :posts do


  end
  resources :comments
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
