Rails.application.routes.draw do
  devise_for :applicants, controllers: {registrations: 'applicants/registrations'}
  resources :profiles, only: [:show, :edit, :update]
  resources :educations
  
  get '/applicants' => "profiles#show", :as => :applicant_root
  root "home#index"
end
