Rails.application.routes.draw do
  get 'dashboard/index'
  get 'home/index'
#root 'dashboard#index'

#Add all of this back
devise_for :admins
devise_scope :admin do

  authenticated :admin do
    root 'home#index', as: :authenticated_root
  end

  unauthenticated do
   root 'devise/sessions#new', as: :unauthenticated_root
  end

end


#Don't add this back, not sure what this is
  #devise_scope :admin do
  #  root to: "devise/sessions#new"
  #end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
