TicketeeSP::Application.routes.draw do
  devise_for :users

  # The priority is based upon order of creation:
  # first created -> highest priority.
  root :to => "projects#index"
  
  resources :projects do 
    resources :tickets
  end
  
end
