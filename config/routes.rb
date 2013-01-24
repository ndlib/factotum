Factotum::Application.routes.draw do
  devise_for :users, :path => "/acquisitions/order/users"
  
  resource :refworks_password_reset, :only => [:new, :show, :create, :update], :path => "/refworks/password" do
    member do
      get 'thank_you'
      get 'reset/:token', :action => :reset, :as => 'reset'
      put 'reset/:token', :action => :confirm_reset, :as => 'confirm_reset'
    end
  end
  
  resources :selectors, :path => "/acquisitions/order/admin" do
    member do
      get 'funds'
    end
  end
  
  resources :just_say_yes_orders, :path => "/acquisitions/order/just_say_yes" do
    collection do
      get 'success'
    end
  end
  
  resources :acquisition_exports, :path => "/acquisitions/order/export"
  
  resources :monographic_orders, :path => "/acquisitions/order" do
    collection do
      get 'success'
      get 'oclc'
    end
  end
  
  match 'quicksearch/subject/' => 'quicksearch#subject', :as => :quicksearch_subject
  
  root :to => "refworks_password_resets#show"
  
  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action
  
  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end
