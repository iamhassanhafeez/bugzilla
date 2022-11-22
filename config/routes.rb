Rails.application.routes.draw do
  devise_for :users, :controllers => {
    :registrations => 'registrations'
  }

  resource :dashboard
  resources :projects do
    resources :bugs
  end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  devise_scope :user do
    root to: "devise/sessions#new"
  end
end
