Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :users #do
      #   resources :items
      # end
      resources :games #do
      #   resources: items
      # end
      post 'games/timeline', to: 'games#create_timeline'
    end
  end 
end
