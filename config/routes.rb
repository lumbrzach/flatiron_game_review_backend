Rails.application.routes.draw do
  
  namespace :api do
    namespace :v1 do
      resources :ratings
      resources :likes
      resources :comments
      resources :games
      resources :game_platforms
      resources :platforms
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    end
  end
end
