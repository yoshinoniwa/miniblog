Rails.application.routes.draw do
  get 'comments/index'

  get 'comments/show'

  get 'comments/new'

  root 'posts#index'

  resources :users do
  end
  resources :posts do
    resources :comments
  end
  get "like" => "posts#like", as: "like"
  get "show" => "posts#show", as: "show"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
