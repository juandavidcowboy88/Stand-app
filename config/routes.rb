Rails.application.routes.draw do
  devise_for :artists
  resources :events
  resources :artists, controllers: { registrations: "registrations" }
  root 'general#index'
    authenticated :artists do
         root to: 'artists#index', as: :authenticated_root
   end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
