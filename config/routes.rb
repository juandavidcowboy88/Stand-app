Rails.application.routes.draw do
  root 'general#index'
  devise_for :artists
  resources :events do
    resources 'artists', only: [:index,:new, :edit]
  end
  resources :artists do
      resources 'events', only: [:index,:new, :edit]
  end

  get '/artists' => 'artists#index', as: :artist_root #create artists_root
  namespace :artist do
   root 'artists#index' # creates user_root_path
   end
   authenticated :artists do
   root to: 'artists#index', as: :authenticated_root
    end


    get 'new_post_modal' => 'artist#new_artist_modal'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
