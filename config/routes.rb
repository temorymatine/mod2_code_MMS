Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :applicants, only: [:index, :show, :new, :create]
  resources :employers, only: [:index, :show, :new, :create]
  resources :interviews, only: [:index, :show]
end
