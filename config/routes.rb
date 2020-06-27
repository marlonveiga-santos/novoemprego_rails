Rails.application.routes.draw do
  devise_for :applicants, controllers: {registrations: 'applicants/registrations', sessions: 'applicants/sessions'}
  authenticated :applicant do
    root "profiles#show", :as => :applicant_root
    resources :profiles, only: [:show, :edit, :update]
  end
  resources :educations, except: [:show]
  resources :professions, except: [:show]

  devise_for :headhunters, controllers: {registrations: 'headhunters/registrations', sessions: 'headhunters/sessions'}
  authenticated :headhunter do 
    root "workspaces#show", :as => :headhunter_root
    resources :workspaces, only: [:index, :show, :edit, :update]
  end
  resources :jobs
  
  #get '/applicants' => "profiles#show", :as => :applicant_root
  root "home#index"

  resources :companies, only: [:new, :create]
end
