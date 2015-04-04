Rails.application.routes.draw do
  # You can have the root of your site routed with "root"
  root to: 'home#index'

  resources :home
  resources :contact_us
  resources :sold_successfully
  resources :art_guide
  resources :portfolio
  resources :gallery
  resources :dashboard
  devise_for :users, controllers: { registrations: :registrations\
  , sessions: :sessions, passwords: :passwords }

  resources :profiles do
    resources :achievements
    resources :qualifications
  end
  resources :paintings do
    member do
      get :artist_paintings
      get :category_paintings
    end
  end

  resources :blogs do
    collection do
      get :like
      get :dislike
    end
    resources :comments
  end

  resources :client_histories do
    collection do
      get :client_history_painting
    end
  end
  resources :events
  resources :painting_categories
end
