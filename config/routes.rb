Rails.application.routes.draw do
  get 'home/index'
  devise_for :admins,
    controllers: {:registrations => "registrations"} #, :sessions => "sessions"} #That will tell devise to use your custom registrations controller

#Setting up a custom route to that action:-----------------------------------------------------------------------------
as :admin do
  get "/register", to: "registrations#new", as: "register"
  #Sget "/session", to: "sessions#new", as: "session"
end
#---------------------------------------------------------------------------------------------------------

#--------------------------------------------------------------------------------------------------------
devise_scope :admin do
  #root 'devise/sessions#new'#, as: :unauthenticated_root
  authenticated :admin do
    root 'home#index', as: :authenticated_root
  #  root 'devise/sessions#new', as: :unauthenticated_root
  end

  unauthenticated do
    root 'devise/sessions#new', as: :unauthenticated_root
  end
end
#--------------------------------------------------------------------------------------------------------



  #devise_scope :admin do
  #  root to: "devise/sessions#new"
  #end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
