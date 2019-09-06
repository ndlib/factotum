Factotum::Application.routes.draw do

  if Rails.env.development?
    root to: 'development#index'
  else
    root to: "refworks_password_resets#new"
  end

  get 'pages/ping' => 'high_voltage/pages#show', id: 'ping'
    
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  devise_scope :user do
    delete 'sign_out', :to => 'devise/sessions#destroy', :as => :destroy_user_session
  end

  scope "/utilities" do

    resource :refworks_password_reset, :only => [:new, :show, :create, :update], :path => "/refworks/password" do
      member do
        get 'thank_you'
        get 'reset/:token', :action => :reset, :as => 'reset'
        put 'reset/:token', :action => :confirm_reset, :as => 'confirm_reset'
      end
    end

    scope "/acquisitions/order" do
      get '/', to: 'monographic_orders#index'

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
          get 'orders.csv', as: :csv, action: 'index', defaults: { format: :csv }
          get 'oclc'
        end
      end
    end

    get 'quicksearch/subject/' => 'quicksearch#subject', as: :quicksearch_subject

    # cataloging statistics entry pages
    namespace :cataloging do
      get '/', to: 'users#index'

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


      get 'admin/' => 'admin#index'
      namespace :admin do
        resources :users, :formats, :transfer_types, :special_procedure_types
        resources :locations do
          resources :locations_formats
        end
      end

      get 'reports/', to: 'reports#index', as: 'reports'
      post 'reports/', to: 'reports#view', as: 'reports_view'

    end

    get '/directory', to: redirect('/directory')
    get '/directory/*directory_path', to: redirect('/directory/%{directory_path}')

    scope '/find' do
      get 'demo' => 'search#demo', as: :find_resources_demo
      get 'resources' => 'search#results_library', as: :find_resources
      get 'demo2' => 'search#demo2', as: :find_resources_demo2
      get 'resources2' => 'search#results_catalog', as: :find_resources2
    end

    scope '/forms' do
      resource :purchase_request, only: [:new, :create, :show], path: :purchase
    end

    namespace :search do
      get 'ejournals', to: 'ejournal_redirects#index', as: :ejournals
      get 'articles', to: 'article_redirects#index', as: :articles
      get 'databases', to: 'database_redirects#index', as: :databases
      get 'primo', to: 'primo_redirects#index', as: :primo
      get 'catalog', to: 'primo_redirects#index', defaults: { institution: 'NDU', tab: 'nd_campus'}
      get 'onesearch', to: 'primo_redirects#index', defaults: { institution: 'NDU', tab: 'onesearch'}
      get 'ebooks', to: 'primo_redirects#index', defaults: { institution: 'NDU', tab: 'ebooks'}
      get 'ndu/:tab', to: 'primo_redirects#index', as: :ndu, defaults: { institution: 'NDU'}
      get 'bci/:tab', to: 'primo_redirects#index', as: :bci, defaults: { institution: 'BCI'}
      get 'hcc/:tab', to: 'primo_redirects#index', as: :hcc, defaults: { institution: 'HCC'}
      get 'smc/:tab', to: 'primo_redirects#index', as: :smc, defaults: { institution: 'SMC'}
      get "login/:vid", to: 'primo_redirects#login', :constraints => proc { |req| ["NDU", "SMC", "HCC", "BCI"].include?(req.params[:vid].upcase) }
    end

    get '/', :to => "refworks_password_resets#show"
  end

  # staff directory
  namespace :directory do

    scope '/api', :controller => 'api' do
      get 'current_employees', :as => 'api_employees_all', :path => '/employee/:format/all'
      get 'employee', :as => 'api_employee', :path => '/employee/:format/:identifier/:emp_id'

      get 'all_units', :as => 'api_units_all', :path => '/unit/:format/all'
      get 'employee_units', :as => 'api_employee_units', :path => '/employee/:format/:identifier/:emp_id/units'
      get 'unit', :as => 'api_unit', :path => '/unit/:format/:unit_id'
      get 'unit_employees', :as => 'api_unit_employees', :path => '/unit/:format/:unit_id/employees'

      get 'all_committees', :as => 'api_committees_all', :path => '/committee/:format/all'
      get 'employee_committees', :as => 'api_employee_committees', :path => '/employee/:format/:identifier/:emp_id/committees'
      get 'committee', :as => 'api_committee', :path => '/committee/:format/:unit_id'
      get 'committee_employees', :as => 'api_committee_employees', :path => '/committee/:format/:unit_id/employees'

      get 'all_teams', :as => 'api_teams_all', :path => '/team/:format/all'
      get 'employee_teams', :as => 'api_employee_teams', :path => '/employee/:format/:identifier/:emp_id/teams'
      get 'team', :as => 'api_team', :path => '/team/:format/:unit_id'
      get 'team_employees', :as => 'api_team_employees', :path => '/team/:format/:unit_id/employees'

      get 'all_organizations', :as => 'api_organizations_all', :path => '/organization/:format/all'
      get 'employee_organizations', :as => 'api_employee_organizations', :path => '/employee/:format/:identifier/:emp_id/organizations'
      get 'organization', :as => 'api_organization', :path => '/organization/:format/:unit_id'
      get 'organization_employees', :as => 'api_organization_employees', :path => '/organization/:format/:unit_id/employees'

      get "", :to => "api#routing_error"
      get "*path", :to => "api#routing_error"
    end

    get '/', to: 'employees#index'

    get 'organization/' => 'organization#index'

    get 'photos' => 'employees#photos'
    resources :employees, :organizational_units, :subjects, :only => [:index, :show]
    resources :departments, :controller => "departments", :type => "DirectoryDepartment", :only => [:index, :show]

    resources :library_teams, :controller => "committees", :type => "DirectoryLibraryTeam", :only => [:index, :show]
    resources :university_committees, :controller => "committees", :type => "DirectoryUniversityCommittee", :only => [:index, :show]


    # staff directory admin pages
    namespace :admin do
      get '/', to: 'employees#index'

      #cannot use helper shallow nest or loses /utilities/ path

      #Employee Routes
      resources :employees, :only => [:index, :new, :create, :edit, :update] do
        get 'employee_units/new/:type' => 'employee_units#new', :as => 'new_unit'
        resources :employee_units, :only => [:create, :edit, :update, :destroy]
        resources :selector_subjects, :only => [:new, :create, :destroy]
      end

      # Organization Routes
      resources :organizational_units, :only => [:index, :edit, :update, :destroy] do
        resources :employee_units, :only => [:new, :create, :edit, :update, :destroy]
      end

      resources :departments, :only => [:new, :create], :controller => "organizational_units", :type => "DirectoryDepartment"
      resources :library_teams, :only => [:new, :create], :controller => "organizational_units", :type => "DirectoryLibraryTeam"
      resources :university_committees, :only => [:new, :create], :controller => "organizational_units", :type => "DirectoryUniversityCommittee"

      # Contact Routes
      resources :contact_informations, :only => [:edit, :update, :destroy]

      resources :organizational_units, :employees, :subjects, :only => [] do
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
end
