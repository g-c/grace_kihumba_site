MySite::Application.routes.draw do
  get "user_controller/new"
  root 'pages_controller#home'
  match '/agreement', to: 'pages_controller#agreement', via:'get'
  match '/feed', to: 'pages_controller#feed', via:'get'
  match '/policy', to: 'pages_controller#policy', via:'get'
  match '/support', to: 'pages_controller#support',via: 'get'
  match '/cart', to: 'pages_controller#cart',via: 'get'
  match '/register', to: 'user_controller#new',via: 'get'
  get "item_controller/index"
  get "item_controller/show"
  get "item_controller/new"
  get "item_controller/create"
  get "item_controller/edit"
  get "item_controller/update"
  get "item_controller/destroy"
  
  get "user_controller/index"
  get "user_controller/show"
  
  get "user_controller/create"
  get "user_controller/edit"
  get "user_controller/update"
  get "user_controller/destroy"
  
  
  
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
