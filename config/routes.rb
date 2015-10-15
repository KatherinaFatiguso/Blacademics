Rails.application.routes.draw do
  resources :news
  resources :messages
  resources :audiences
  resources :listings
  resources :jobs
  resources :organisations
  resources :skills
  resources :employments
  resources :cadetships
  resources :internships
  resources :awards
  resources :scholarships
  resources :university_educations
  resources :student_profiles
  get 'admin', to: 'pages#admin'
  get 'contact', to: 'pages#contact'
  root 'pages#home'
  get 'pages/home'
  get 'pages/admin'
  get 'pages/events'
  get 'pages/programs'
  get 'pages/jobs'
  get 'pages/contact'
  get 'pages/approved_events'
  get 'pages/approved_programs'
  get 'pages/approved_jobs'
  get 'pages/universities'
  get 'pages/organisations'
  get 'pages/highschoolers'
  get 'pages/highschoolers_view_listings'
  get 'pages/uni_students'
  get 'pages/uni_students_listings'
  get 'pages/students_gallery'
  get 'pages/conversations'
  get 'pages/news'
  get 'pages/guides'


  devise_for :users

  resources :listings do
  	member do
  		get :remove_audience_from
  		get :add_audience_to
  	end
  end

  # I will have to do this style to all pages sections
  # get 'conversations', to: 'pages#conversations'

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
