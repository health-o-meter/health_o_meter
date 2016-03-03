Rails.application.routes.draw do
  root 'dashboard#index'

  get 'dashboard/index'

  get 'dashboard/create'

  get 'dashboard/new'

  get 'dashboard/edit'

  get 'dashboard/destroy'

  get 'dashboard/update'

  get 'dashboard/show'

  get 'exercises/index'

  get 'exercises/show'

  get 'exercises/new'

  get 'exercises/edit'

  get 'exercises/create'

  get 'exercises/update'

  get 'exercises/destroy'

  get 'exercise_types/index'

  get 'exercise_types/show'

  get 'exercise_types/new'

  get 'exercise_types/edit'

  get 'exercise_types/create'

  get 'exercise_types/destroy'

  get 'exercise_types/update'

  get 'grubs/index'

  get 'grubs/show'

  get 'grubs/new'

  get 'grubs/edit'

  get 'grubs/create'

  get 'grubs/destroy'

  get 'grubs/update'

  resources :steps
  resources :weights
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
