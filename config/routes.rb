Depot::Application.routes.draw do
  get 'admin' => "admin#index"
  controller :sessions do

    get 'login' => :new

    post 'login' => :create

    delete 'logout' => :destroy
  end
  
  scope '(:locale)' do
    
    resources :users

    resources :orders

    resources :line_items

    resources :carts

    resources :products do
      get :who_bought, :on => :member
    end

    match "products/sign" => "products#sign"
    match "products/login" => "products#login"
    match "products/menu" => "products#menu"
    match "products/index" => "products#index"
      
    resources :products

    root :to => 'store#index', :as => "store"

    # See how all your routes lay out with "rake routes"

    # This is a legacy wild controller route that's not recommended for RESTful applications.
    # Note: This route will make all actions in every controller accessible via GET requests.
    
  end

  match ':controller(/:action(/:id(.:format)))'
end