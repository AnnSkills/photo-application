Rails.application.routes.draw do
  resources :file_storages
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    passwords: 'users/passwords',
    registrations: 'users/registrations',
    confirnations: 'users/confirnations'
  }

  root "file_storages#index"
  # root "home#index"
  get 'pricing', to: "static_pages#pricing"
  post "checkout/create", to: "checkout#create", as: "checkout_create"
  post "billing_portal/create", to: "billing_portal#create", as: "billing_portal_create"
  resources :webhooks, only: [:create]
  resources :file_storages

end
