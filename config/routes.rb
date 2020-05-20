Rails.application.routes.draw do
  devise_for :applicants, controllers: {registrations: 'applicants/registrations'}
  namespace :applicants do
    root :to => "home#index" #profile page
  end
  root "home#index"
end
