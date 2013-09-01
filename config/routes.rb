TableMountain::Application.routes.draw do

  resources :respondents

  match '/feedbacks/new1' => "feedbacks#new1", :as => :new1_feedback, :via => :get
  match '/feedbacks/new2' => "feedbacks#new2", :as => :new2_feedback, :via => :get
  match '/feedbacks/new3' => "feedbacks#new3", :as => :new3_feedback, :via => :get
  match '/feedbacks/new4' => "feedbacks#new4", :as => :new4_feedback, :via => :get
  match '/feedbacks/new5' => "feedbacks#new5", :as => :new5_feedback, :via => :get
  match '/feedbacks/new6' => "feedbacks#new6", :as => :new6_feedback, :via => :get

  match '/feedbacks/create1' => "feedbacks#create1", :as => :create1_feedback, :via => :post
  match '/feedbacks/create2' => "feedbacks#create2", :as => :create2_feedback, :via => :post
  match '/feedbacks/create3' => "feedbacks#create3", :as => :create3_feedback, :via => :post
  match '/feedbacks/create4' => "feedbacks#create4", :as => :create4_feedback, :via => :post
  match '/feedbacks/create5' => "feedbacks#create5", :as => :create5_feedback, :via => :post
  match '/feedbacks/create6' => "feedbacks#create6", :as => :create6_feedback, :via => :post

  match '/feedbacks/complete' => "feedbacks#complete", :as => :complete_feedback, :via => :get

  resources :feedbacks

  match '/home' => "home#index", :as => :home, :via => :get

  root :to => 'respondents#new'

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
  # match ':controller(/:action(/:id))(.:format)'
end
