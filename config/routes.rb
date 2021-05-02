Rails.application.routes.draw do
  get 'home/index'
  devise_for :admins




devise_scope :admin do

  authenticated :admin do
    root 'home#index', as: :authenticated_root
  end

  unauthenticated do
    #root 'home#index', as: :unauthenticated_root
    root 'devise/sessions#new', as: :unauthenticated_root
  end
end
  #devise_scope :admin do
  #  root to: "devise/sessions#new"
  #end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
