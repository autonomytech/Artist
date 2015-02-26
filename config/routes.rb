Rails.application.routes.draw do
  root 'home#index'
  resources :home
  resources :dashboard
  devise_for :users, controllers: { registrations: :registrations\
  , sessions: :sessions }
  resources :achievements
  resources :qualifications
  resources :profiles
  resources :paintings
  resources :blogs do
     resources :comments
  end
  resources :client_histories
  resources :events
  resources :painting_categories
end
