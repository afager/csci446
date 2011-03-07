ActionController::Routing::Routes.draw do |map|
 
  map.login "login", :controller => "user_sessions", :action => "new"
  map.logout "logout", :controller => "user_sessions", :action => "destroy"
  map.register "register", :controller => "admin_user", :action => "new"
  map.edit "edit", :controller => "games", :action => "edit"
  map.edit_user "edit_user", :controller => "admin_user", :action => "edit"
  map.new "new_game", :controller => "games", :action => "new"
  
  map.resources :user_sessions, :only => [:new, :create, :destroy]
   
  map.namespace :admin do |admin|
    admin.resources :roles
	admin.resources :users
	admin.root :controller => "admin", :action => "index"
  end
  #get "Registraion" => "users#new", :as => "Registraion"
  #root :to => "users#new"
  #resources :users
  
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
  map.root :controller => 'games', :action => "index"
  end
