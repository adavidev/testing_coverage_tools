AlanProfile::Application.routes.draw do
  match '/', :to => "home#index"

  get 'profile', :controller => "home", :action => "profile"
end
