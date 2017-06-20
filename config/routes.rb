Rails.application.routes.draw do
    resources :adoptions
    resources :users
    resources :locations
    resources :foods
    resources :notes
    resources :donations
    resources :trees


  # --- DONATIONS ---
  # get single donation by location -> GET /api/v1/locations/4/last_donation ?
  # get all donations from list of locations -> GET /api/v1/locations?loc_id=[4,5,6]
  # get single donation from tree -> GET /api/v1/trees/45/donations
  # get all donations from multiple trees
  # change donation -> UPDATE /api/v1/donations/56
  # create donation -> POST /api/v1/donations
  # delete donation -> DELETE /api/v1/donations/4
  # -----------------

  # --- LOCATIONS (should be done )---
  # create location -> POST /api/v1/locations
  # change location -> UPDATE /api/v1/locations/3
  # delete location -> DELETE ...
  # get all locations -> GET /api/v1/locations
  # -----------------

  # --- NOTES ---
  # CRUD
  # get all notes from a particular tree
  # get all notes from a particular user
  # -----------------

  # --- TREES ---
  # CRUD
  # get all trees (either specific ones or seasonal ones, adopted/unadopted, etc -- filter function)
  # get a specific parent's trees?
  # -----------------

  # --- FOODS (mostly done)---
  # UPDATE food only (unused?)
  # GET all foods
  # -----------------

  # --- PERSONS ---
  # CRU (no D)
  # GET all users
  # -----------------

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
