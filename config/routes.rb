Rails.application.routes.draw do
  devise_for :homes
  root 'welcome#index'
  resources :homes
end