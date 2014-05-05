DogEdating::Application.routes.draw do
  
  root to: 'parks#index'

  resources :dogs
  resources :parks


# Prefix Verb   URI Pattern               Controller#Action
#      root GET    /                         parks#index
#      park GET    /parks/:id(.:format)      parks#show
#      dogs GET    /dogs(.:format)           dogs#index
#           POST   /dogs(.:format)           dogs#create
#   new_dog GET    /dogs/new(.:format)       dogs#new
#  edit_dog GET    /dogs/:id/edit(.:format)  dogs#edit
#       dog GET    /dogs/:id(.:format)       dogs#show
#           PATCH  /dogs/:id(.:format)       dogs#update
#           PUT    /dogs/:id(.:format)       dogs#update
#           DELETE /dogs/:id(.:format)       dogs#destroy
#     parks GET    /parks(.:format)          parks#index
#           POST   /parks(.:format)          parks#create
#  new_park GET    /parks/new(.:format)      parks#new
# edit_park GET    /parks/:id/edit(.:format) parks#edit
#           GET    /parks/:id(.:format)      parks#show
#           PATCH  /parks/:id(.:format)      parks#update
#           PUT    /parks/:id(.:format)      parks#update
#           DELETE /parks/:id(.:format)      parks#destroy


  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
