Rails.application.routes.draw do
  get 'static_pages/home'

  get 'static_pages/home2'

  get 'static_pages/home3'

  get 'static_pages/home4'

  get 'static_pages/ubicacion'

  get 'static_pages/servicios'

  get 'static_pages/quien'

  get 'static_pages/prod'

  get 'static_pages/costo'

  get 'static_pages/venta'

  get 'static_pages/contacto'

  resources :post_comment_answers

  resources :post_comments

  resources :post_parrafo_bullets

  resources :post_parrafos

  resources :post_rels

  resources :post_links

  resources :posts

  get 'contacts/mail_confirmation'
  get 'contacts/mail_explanation'

  resources :contacts

  resources :profile_options

  resources :profiles

  resources :options

  resources :areas

  resources :canalingresos

  get 'sessions/new'

  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'static_pages#home2'

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
