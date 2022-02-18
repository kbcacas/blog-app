Rails.application.routes.draw do

  resources :posts do
    resources :comments
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  devise_for :users, controllers: { session: 'users/sessions' }
  devise_scope :user do
    root to: "devise/sessions#new"
    get "/sign_out" => "users/sessions#destroy" 
    authenticated :user do
      namespace :users do
        get 'posts/index', as: :posts
      end
    end
  end
end
