Mana::Application.routes.draw do

  match "/quienes-somos" => "quienes_somos#index", via: :get, as: 'quienes_somos'

  resources :contactos

  resources :productos

  resources :categorias

  resources :categorias do
    resources :productos
  end

  resources :slides

  devise_for :admins

  root to: 'inicio#index'
end
