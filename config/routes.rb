Rails.application.routes.draw do
  devise_for :users

  resources :users

  resources :products do
    resources :comments
  end

  post 'payments/create'

  resources :orders, only: [:index, :show, :create, :destroy]
  resources :users, except: [:index]
  get 'simple_pages/about'
  get 'simple_pages/contact'
  root 'simple_pages#landing_page'
  get 'simple_pages/index'
  get 'simple_pages/landing_page'
  post 'simple_pages/thank_you'
  mount ActionCable.server => '/cable'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
