Rails.application.routes.draw do
  devise_for :homes
  resources :homes
  root 'welcome#index'
end