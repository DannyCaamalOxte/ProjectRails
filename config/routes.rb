Rails.application.routes.draw do
  resources :rooms
  #ruta de inicio dirije al cotrolador pagina y accion home
  root to: "pages#home"

  get 'pages/home'
  get 'pages/about'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
