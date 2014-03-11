Teacher::Application.routes.draw do
  # teach_routes
  resources :levels, only: [:show, :index] do
    resources :lessons
  end
  resources :lessons, only: [:show, :index] do
    resources :exercises
  end
  resources :exercises

  # users_&_sessions_routes
  resources :users
  resources :sessions
  get 'login', to: 'sessions#new'
  get 'logout', to: 'sessions#destroy'

  #shop_routes
  get 'store', to: 'store#index'
  resources :products
<<<<<<< HEAD
  resources :line_items
  resources :carts
=======

  get 'product', to: 'product#show'


  root to: 'store#index', as: 'store'
>>>>>>> 1af7e81b63abb860e03583685ab7ce489fbe1443

  # forum_routes
  resources :rubrics do
    resources :topics
  end
  resources :topics do
    resources :comments
  end
  resources :comments

  # pages_routes
  root 'static_pages#home'
  get 'home', to: 'static_pages#home'
  get 'help', to: 'static_pages#help'
  get 'about', to: 'static_pages#about'


  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"

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
