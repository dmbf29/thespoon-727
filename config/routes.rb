Rails.application.routes.draw do
  # verb '/path', to: 'controller#action', as: :prefix
  # CRUD
  # Read all
  get '/restaurants', to: 'restaurants#index', as: :restaurants
  # Read one # params[:id]
  get '/restaurants/:id', to: 'restaurants#show', as: :restaurant

  # Create
  # one page for the form
  get '/restaurants/new', to: 'restaurants#new', as: :new_restaurant
  # a place to send our form data
  post '/restaurants', to: 'restaurants#create'

  # Update
  # one page for the form
  get '/restaurants/:id/edit', to: 'restaurants#edit', as: :edit_restaurant
  # a place to send our form data
  patch '/restaurants/:id', to: 'restaurants#update'

  # Destroy
  delete '/restaurants/:id', to: 'restaurants#destroy'
end


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
