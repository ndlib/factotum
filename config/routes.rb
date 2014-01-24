Factotum::Application.routes.draw do

  if Rails.env.development?
    root to: 'development#index', via: :get
  end

  scope "/utilities" do
    devise_for :users

    resource :refworks_password_reset, :only => [:new, :show, :create, :update], :path => "/refworks/password" do
      member do
        get 'thank_you'
        get 'reset/:token', :action => :reset, :as => 'reset'
        put 'reset/:token', :action => :confirm_reset, :as => 'confirm_reset'
      end
    end

    scope "/acquisitions/order" do
      root to: 'monographic_orders#index', via: :get

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

      resources :monographic_orders, path: "" do
        collection do
          get 'orders.csv', as: :csv, action: 'index', format: :csv
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

      resources :service_points, :only => [:index, :update, :edit, :new, :create] do
        resources :hours_print, :only => [:show, :print] do
          member do
            get 'print'
          end
        end

        resources :hours, :only => [:index, :destroy]
        resources :regular_hours, :only => [:new, :edit, :create, :update]
        resources :hours_exceptions, :only => [:new, :edit, :create, :update]
      end
    end

    # help requests
    scope "/help/:location" do
      resource :help_requests, :controller => 'help', :path => '/', :only => [:new, :create]
    end

    # maps request form
    namespace :maps do
      root to: 'buildings#index'

      resource :request, :controller => 'request', :only => [:new, :create]

      resources :buildings, only: [:index, :new, :create] do
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


    # cataloging statistics entry pages
    namespace :cataloging do
      root to: 'users#index'

      resources :users do
        resources :copy_cataloging, :controller => "entries", :type => "Cataloging::CopyCataloging"
        resources :original_cataloging, :controller => "entries", :type => "Cataloging::OriginalCataloging"
        resources :special_procedure, :controller => "entries", :type => "Cataloging::SpecialProcedure"
        resources :transfer, :controller => "entries", :type => "Cataloging::Transfer"
        resources :volume_addition, :controller => "entries", :type => "Cataloging::VolumeAddition"
        resources :withdrawal, :controller => "entries", :type => "Cataloging::Withdrawal"

        resources :entries, :only => [:index, :edit, :show] do
          collection do
            get ':year/:month/edit', action: 'index', year: /\d{4}/, month: /\d{2}/, as: 'edit'
            get ':year/:month', action: 'show', year: /\d{4}/, month: /\d{2}/, as: 'show'
            post ':year/:month', action: 'index', year: /\d{4}/, month: /\d{2}/, as: 'post'
          end
        end
      end


      match 'admin/' => 'admin#index'
      namespace :admin do
        resources :users, :formats, :transfer_types, :special_procedure_types
        resources :locations do
          resources :locations_formats
        end
      end

    end

    # staff directory
    namespace :directory do
      root to: 'employees#index'

      match 'organization/' => 'organization#index'
      match 'departments/' => 'organization#department_list'
      match 'committees/' => 'organization#committee_list'

      resources :employees, :organizational_units, :only => [:index, :show]
      resources :subjects, :selector_subjects
      resources :departments, :controller => "organization", :type => "DirectoryDepartment"
      resources :library_committees, :controller => "organization", :type => "DirectoryLibraryCommittee"
      resources :university_committees, :controller => "organization", :type => "DirectoryUniversityCommittee"

      

      # staff directory admin pages
      namespace :admin do

        #cannot use helper shallow nest or loses /utilities/ path

        #Employee Routes
        resources :employees, :only => [:index, :new, :create, :edit, :update] do
          get 'employee_units/new/:type' => 'employee_units#new', :as => 'new_unit'
          resources :employee_units, :only => [:create, :edit, :update, :destroy]    
        end

        # Organization Routes
        resources :organizational_units, :only => [:index, :edit, :update] do
          resources :employee_units, :only => [:new, :create, :edit, :update, :destroy]    
        end  

        resources :departments, :only => [:new, :create], :controller => "organizational_units", :type => "DirectoryDepartment"
        resources :library_committees, :only => [:new, :create], :controller => "organizational_units", :type => "DirectoryLibraryCommittee"
        resources :university_committees, :only => [:new, :create], :controller => "organizational_units", :type => "DirectoryUniversityCommittee"

        # Contact Routes
        resources :contact_informations, :only => [:edit, :update, :destroy]
        resources :organizational_units, :employees, :only => [] do

          #  all hard-coded, but could change to create routes for each descendant of ContactInformation
          resources :phones, :controller => "contact_informations", :type => "DirectoryContactPhone", :only => [:new, :create]
          resources :addresses, :controller => "contact_informations", :type => "DirectoryContactAddress", :only => [:new, :create]
          resources :emails, :controller => "contact_informations", :type => "DirectoryContactEmail", :only => [:new, :create]
          resources :faxes, :controller => "contact_informations", :type => "DirectoryContactFax", :only => [:new, :create]
          resources :webpages, :controller => "contact_informations", :type => "DirectoryContactWebpage", :only => [:new, :create]
        end

        resources :subjects, :only => [:show, :new, :create, :edit, :update, :destroy] do
          resources :selector_subjects, :only => [:new, :create, :destroy]
        end  

      end
      
    end


    scope '/find' do
      match 'demo' => 'search#demo', as: :find_resources_demo, via: :get
      match 'resources' => 'search#results_library', as: :find_resources, via: :get
      match 'demo2' => 'search#demo2', as: :find_resources_demo2, via: :get
      match 'resources2' => 'search#results_catalog', as: :find_resources2, via: :get
    end

    scope '/forms' do
      resource :purchase_request, only: [:new, :create, :show], path: :purchase
    end

    root :to => "refworks_password_resets#show"
  end
end
