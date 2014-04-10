Teacher::Application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  # teach routes
  resources :levels, only: [:show] do
    resources :lessons
  end

  resources :lessons, only: [:show, :index]
  resources :tracks
  resources :grammars, only: [:show, :index]

  # users & sessions_routes
  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  get 'login', to: 'sessions#new'
  get 'logout', to: 'sessions#destroy'

  # shop routes
  get 'store', to: 'store#index'
  resources :categories, only: [:show]
  resources :products
  
  resources :orders do
    get 'confirm/:order', to: 'orders#confirm'

  end

  resources :line_items
  resources :carts, only: [:show, :destroy]

  # forum routes
  resources :rubrics, only: [:show, :index] do
    resources :topics
  end

  resources :topics do
    resources :comments
  end

  resources :comments

  # test routes
  resources :tests do
    member do
      post 'send_results' => 'tests#send_results'
    end
  end

  # static pages routes
  root 'static_pages#home'
  get 'individual_learn_page', to:'static_pages#individual_learn_page'
  get 'skype_learn_page',      to:'static_pages#skype_learn_page'
  get 'payment',               to:'static_pages#payment'
  get 'technique',             to:'static_pages#technique'
  get 'training_program',      to:'static_pages#training_program'
  get 'about',                 to:'static_pages#about'
  get 'contact',               to:'static_pages#contact'
  get 'general_course',        to:'static_pages#general_course'
  get 'business_course',       to:'static_pages#business_course'
  get 'special_course',        to:'static_pages#special_course'
  get 'training_course',       to:'static_pages#training_course'
  get 'english_grammar',       to:'static_pages#grammar'

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
