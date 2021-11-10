Rails.application.routes.draw do
  # verb '/path', to: 'controller#action', as: :prefix
  # CRUD
  resources :restaurants do
    resources :reviews, only: [:new, :create]
    member do
      get :chef
    end
    collection do
      get :top
    end
  end
  resources :reviews, only: [:destroy]
  # restaurant_review_path(restaurant, review), method: :delete
  # new / create
  # get '/reviews/new', to: 'reviews#new'

end



# get '/restaurants/top', to: 'restaurants#top', as: :top_restaurants
# index
# restaurants_path, method: :get
# create
# restaurants_path, method: :post
# show
# restaurant_path(restaurant), method: :get
# update
# restaurant_path(restaurant), method: :patch
# destroy
# restaurant_path(restaurant), method: :delete
