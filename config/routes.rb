TicketeeSP::Application.routes.draw do
  # The priority is based upon order of creation:
  # first created -> highest priority.
  root :to => "projects#index"
  
  resources :projects do 
    resources :tickets
  end
  
end
