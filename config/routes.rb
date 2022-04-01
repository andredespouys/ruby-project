Rails.application.routes.draw do

  devise_for :users
  devise_scope :user do
  get '/users/sign_out' => 'devise/sessions#destroy'
  end
  devise_for :views
  root "home#index"
  # Setting alternative routes (pages)
  #resources :articles
  resources :home
  resources :workouts do
    resources :exercises
  end
end
