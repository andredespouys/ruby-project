Rails.application.routes.draw do
  #Sets the home page"
  root "articles#index"
  # Setting alternative routes (pages)
  resources :articles
  resources :home
end
