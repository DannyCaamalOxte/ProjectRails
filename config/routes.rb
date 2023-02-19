Rails.application.routes.draw do
  devise_for :users, path: '', path_names: {
    sign_in: 'login',
    sign_out: 'logout',
    sign_up: 'register'
  }
  resources :rooms
  #ruta de inicio dirije al cotrolador pagina y accion home
  root to: "pages#home"

  get "home", to: 'pages#home'
  get "about", to: 'pages#about'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
