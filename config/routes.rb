Rails.application.routes.draw do
  root to: "api/v1/games#index"

  namespace :api do
    namespace :v1 do
      resources :users, except: :destroy
    end
  end

  namespace :api do
    namespace :v1 do
      resources :games, except: :destroy
    end
  end

end
