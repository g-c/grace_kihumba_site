MySite::Application.routes.draw do
  resources :users
  resources :items
  root 'pages#home'
  match '/agreement', to: 'pages#agreement', via:'get'
  match '/feed', to: 'pages#feed', via:'get'
  match '/policy', to: 'pages#policy', via:'get'
  match '/support', to: 'pages#support',via: 'get'
  match '/cart', to: 'pages#cart',via: 'get'
  match '/register', to: 'users#new',via: 'get'
  match '/list_item', to: 'items#new',via: 'get'
  match '/signin', to: 'pages#signin',via: 'get'
  match '/loggedin', to: 'users#show',via: 'get'
  get "items/index"
  get "items/show"
  
  get "items/create"
  get "items/edit"
  get "items/update"
  get "items/destroy"
  
  get "users/index"
  get "users/show"
  
  get "users/create"
  get "users/edit"
  get "users/update"
  get "users/destroy"
  
  
  
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
