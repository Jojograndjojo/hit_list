Rails.application.routes.draw do
  devise_for :users

  resources :companies do
    resources :interests
  end
  root to: 'companies#index' 
end
