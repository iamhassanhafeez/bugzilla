Rails.application.routes.draw do
  devise_for :users
  resource :dashboard
  resources :projects

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  devise_scope :user do
    root to: "devise/sessions#new"
  end
end
