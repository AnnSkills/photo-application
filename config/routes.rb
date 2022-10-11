Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    passwords: 'users/passwords',
    registrations: 'users/registrations',
    confirnations: 'users/confirnations'
  }

  root "home#index"
  get 'pricing', to: "static_pages#pricing"
end
