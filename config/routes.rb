Rails.application.routes.draw do
  # devise_for :homes
  
  devise_for :homes, :controllers => { :registrations => "registrations" }
  root 'welcome#index'
  
  get 'profile' => 'homes#show'
  
end