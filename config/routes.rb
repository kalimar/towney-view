Rails.application.routes.draw do
  resources :recommendations
  devise_for :homes
  root 'welcome#index'
  resources :homes
end