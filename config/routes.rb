Factotum::Application.routes.draw do

  resource :refworks_password_reset, :only => [:new, :show, :create, :update], :path => "/refworks/password" do
    member do
      get 'thank_you'
      get 'reset/:token', :action => :reset, :as => 'reset'
      put 'reset/:token', :action => :confirm_reset, :as => 'confirm_reset'
    end
  end

  scope "/acquisitions/order" do
    devise_for :users

    resource :user, only: :show do
      member do
        put 'order_emails'
      end
    end

    resources :just_say_yes_orders, path: "just_say_yes" do
      collection do
        get 'success'
      end
    end

    resources :acquisition_exports, path: "export"

    scope "/admin" do
      resources :selectors, path: "" do
        member do
          get 'funds'
        end
      end
    end

    match "/orders.csv" => 'monographic_orders#index', as: :monographic_orders_csv, format: :csv

    resources :monographic_orders, path: "" do
      collection do
        get 'oclc'
      end
    end
  end

  match 'quicksearch/subject/' => 'quicksearch#subject', as: :quicksearch_subject

  # routes for availability
  namespace :availability do
    root :to => 'service_points#index'

    match 'hours/api' => 'api#index', :as => :hours_api
    match 'javascript_builder' => 'javascript_builder#index'

    resources :service_points_print, :only => [:show, :print] do
      member do
        get 'print'
      end
    end

    resources :service_points, :only => [:index, :update, :edit] do
      resources :hours, :only => [:index, :destroy]
      resources :regular_hours, :only => [:new, :edit, :create, :update]
      resources :hours_exceptions, :only => [:new, :edit, :create, :update]
    end
  end


  # maps request form
  namespace :maps do
    root to: 'buildings#index'

    resource :request, :controller => 'request', :only => [:new, :create]

    resources :buildings, only: [:index] do
      resources :floor_maps_print, :only => [:show, :print] do
        member do
          get 'print'
        end
      end

      resources :floor_maps do
        resources :call_number_ranges, :except => [:index, :show ]
      end
    end

    match "api" => 'api#index', as: :maps_api
  end


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
