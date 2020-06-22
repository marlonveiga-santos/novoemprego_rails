Rails.application.routes.draw do
  devise_for :applicants, controllers: {registrations: 'applicants/registrations', sessions: 'applicants/sessions'}
  authenticated :applicant do
    root "profiles#show", :as => :applicant_root
  end
  resources :profiles, only: [:show, :edit, :update]
  resources :educations, except: [:show]
  resources :professions, except: [:show]

  devise_for :headhunters, controllers: {registrations: 'headhunters/registrations', sessions: 'headhunters/sessions'}
  authenticated :headhunter do 
    root "workspaces#show", :as => :headhunter_root
  end
  #resources :workspaces, only: [:show, :edit, :update]
  
  #get '/applicants' => "profiles#show", :as => :applicant_root
  root "home#index"
end
