Rails.application.routes.draw do
  devise_for :users
  # Routes for the Recipe resource:
  # CREATE
  get '/recipes/new',      :controller => 'recipes', :action => 'new',    :as => 'new_recipe'
  post '/recipes',         :controller => 'recipes', :action => 'create', :as => 'recipes'

  # READ
  get '/recipes',          :controller => 'recipes', :action => 'index'
  get '/recipes/:id',      :controller => 'recipes', :action => 'show',   :as => 'recipe'

  # UPDATE
  get '/recipes/:id/edit', :controller => 'recipes', :action => 'edit',   :as => 'edit_recipe'
  patch '/recipes/:id',    :controller => 'recipes', :action => 'update'

  # DELETE
  delete '/recipes/:id',   :controller => 'recipes', :action => 'destroy'
  #------------------------------

  root to: "recipes#index"
  # Routes for the Meal resource:
  # CREATE
  get '/meals/new',      :controller => 'meals', :action => 'new',    :as => 'new_meal'
  post '/meals',         :controller => 'meals', :action => 'create', :as => 'meals'

  # READ
  get '/meals',          :controller => 'meals', :action => 'index'
  get '/meals/:id',      :controller => 'meals', :action => 'show',   :as => 'meal'

  # UPDATE
  get '/meals/:id/edit', :controller => 'meals', :action => 'edit',   :as => 'edit_meal'
  patch '/meals/:id',    :controller => 'meals', :action => 'update'

  # DELETE
  delete '/meals/:id',   :controller => 'meals', :action => 'destroy'
  #------------------------------

  # Routes for the User resource:
  # CREATE
  get '/users/new',      :controller => 'users', :action => 'new',    :as => 'new_user'
  post '/users',         :controller => 'users', :action => 'create', :as => 'users'

  # READ
  get '/users',          :controller => 'users', :action => 'index'
  get '/users/:id',      :controller => 'users', :action => 'show',   :as => 'user'

  # UPDATE
  get '/users/:id/edit', :controller => 'users', :action => 'edit',   :as => 'edit_user'
  patch '/users/:id',    :controller => 'users', :action => 'update'

  # DELETE
  delete '/users/:id',   :controller => 'users', :action => 'destroy'
  #------------------------------

  # Routes for the Ingredient resource:
  # CREATE
  get '/ingredients/new',      :controller => 'ingredients', :action => 'new',    :as => 'new_ingredient'
  post '/ingredients',         :controller => 'ingredients', :action => 'create', :as => 'ingredients'

  # READ
  get '/ingredients',          :controller => 'ingredients', :action => 'index'
  get '/ingredients/:id',      :controller => 'ingredients', :action => 'show',   :as => 'ingredient'

  # UPDATE
  get '/ingredients/:id/edit', :controller => 'ingredients', :action => 'edit',   :as => 'edit_ingredient'
  patch '/ingredients/:id',    :controller => 'ingredients', :action => 'update'

  # DELETE
  delete '/ingredients/:id',   :controller => 'ingredients', :action => 'destroy'
  #------------------------------

  # Routes for the Recipe_ingredient resource:
  # CREATE
  get '/recipe_ingredients/new',      :controller => 'recipe_ingredients', :action => 'new',    :as => 'new_recipe_ingredient'
  post '/recipe_ingredients',         :controller => 'recipe_ingredients', :action => 'create', :as => 'recipe_ingredients'

  # READ
  get '/recipe_ingredients',          :controller => 'recipe_ingredients', :action => 'index'
  get '/recipe_ingredients/:id',      :controller => 'recipe_ingredients', :action => 'show',   :as => 'recipe_ingredient'

  # UPDATE
  get '/recipe_ingredients/:id/edit', :controller => 'recipe_ingredients', :action => 'edit',   :as => 'edit_recipe_ingredient'
  patch '/recipe_ingredients/:id',    :controller => 'recipe_ingredients', :action => 'update'

  # DELETE
  delete '/recipe_ingredients/:id',   :controller => 'recipe_ingredients', :action => 'destroy'
  #------------------------------

  # Routes for the Name resource:
  # CREATE
  get '/names/new',      :controller => 'names', :action => 'new',    :as => 'new_name'
  post '/names',         :controller => 'names', :action => 'create', :as => 'names'

  # READ
  get '/names',          :controller => 'names', :action => 'index'
  get '/names/:id',      :controller => 'names', :action => 'show',   :as => 'name'

  # UPDATE
  get '/names/:id/edit', :controller => 'names', :action => 'edit',   :as => 'edit_name'
  patch '/names/:id',    :controller => 'names', :action => 'update'

  # DELETE
  delete '/names/:id',   :controller => 'names', :action => 'destroy'
  #------------------------------

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
