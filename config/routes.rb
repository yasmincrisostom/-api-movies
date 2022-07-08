Rails.application.routes.draw do
  namespace :api, format: :json do
    namespace :v1 do
      resources :movies, only: %i[index create]
    end
  end
  root to: 'api/v1/movies#index', format: :json
end
