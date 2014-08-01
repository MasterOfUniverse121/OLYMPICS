Rails.application.routes.draw do
  # Routes for the Athlete resource:
  # CREATE
  get '/new_athlete' => 'athletes#new'
  get '/create_athlete' => 'athletes#create'

  # READ
  get '/athletes' => 'athletes#index'
  get '/athletes/:id' => 'athletes#show'

  # UPDATE
  get '/athletes/:id/edit' => 'athletes#edit'
  get '/athletes/:id/update' => 'athletes#update'

  # DELETE
  get '/athletes/:id/destroy' => 'athletes#destroy'
  #------------------------------

  # Routes for the Event_athlete resource:
  # CREATE
  get '/new_event_athlete' => 'event_athletes#new'
  get '/create_event_athlete' => 'event_athletes#create'

  # READ
  get '/event_athletes' => 'event_athletes#index'
  get '/event_athletes/:id' => 'event_athletes#show'

  # UPDATE
  get '/event_athletes/:id/edit' => 'event_athletes#edit'
  get '/event_athletes/:id/update' => 'event_athletes#update'

  # DELETE
  get '/event_athletes/:id/destroy' => 'event_athletes#destroy'
  #------------------------------

  # Routes for the Event resource:
  # CREATE
  get '/new_event' => 'events#new'
  get '/create_event' => 'events#create'

  # READ
  get '/events' => 'events#index'
  get '/events/:id' => 'events#show'

  # UPDATE
  get '/events/:id/edit' => 'events#edit'
  get '/events/:id/update' => 'events#update'

  # DELETE
  get '/events/:id/destroy' => 'events#destroy'
  #------------------------------

  # Routes for the Sport_event resource:
  # CREATE
  get '/new_sport_event' => 'sport_events#new'
  get '/create_sport_event' => 'sport_events#create'

  # READ
  get '/sport_events' => 'sport_events#index'
  get '/sport_events/:id' => 'sport_events#show'

  # UPDATE
  get '/sport_events/:id/edit' => 'sport_events#edit'
  get '/sport_events/:id/update' => 'sport_events#update'

  # DELETE
  get '/sport_events/:id/destroy' => 'sport_events#destroy'
  #------------------------------

  # Routes for the Sport resource:
  # CREATE
  get '/new_sport' => 'sports#new'
  get '/create_sport' => 'sports#create'

  # READ
  get '/sports' => 'sports#index'
  get '/sports/:id' => 'sports#show'

  # UPDATE
  get '/sports/:id/edit' => 'sports#edit'
  get '/sports/:id/update' => 'sports#update'

  # DELETE
  get '/sports/:id/destroy' => 'sports#destroy'
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
