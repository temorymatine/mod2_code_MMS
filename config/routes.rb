Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :applicants, only: [:index, :show]
  resources :employers, only: [:index, :show]
  resources :interviews, only: [:index, :show]
end
