AlanProfile::Application.routes.draw do
  match '/', :to => "articles#index"

  resources :articles
end
