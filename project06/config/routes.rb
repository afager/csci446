ActionController::Routing::Routes.draw do |map|
  map.resources :games
  map.root :controller => 'games'

  #get "Registraion" => "users#new", :as => "Registraion"
  #root :to => "users#new"
  #resources :users
  
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
