Rails.application.routes.draw do
  authenticated :user do
    root :to => "users#show", :as => "user_authenticated_root"
  end

  root "homes#top"


  devise_for :users, controllers: {
    sessions: 'devise/sessions',
    registrations: 'devise/registrations'
  }

  get "/home/about" => "homes#about"
  resources :users
  resources :books
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
