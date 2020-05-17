Rails.application.routes.draw do
  devise_for :applicants
  namespace :applicants do
    root :to => "home#index" #profile page
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'home#index'
end
