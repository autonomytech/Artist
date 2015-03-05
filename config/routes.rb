Rails.application.routes.draw do
  root 'home#index'
  resources :home do
    collection do
      get :about_us
      get :contact_us
    end
  end
  resources :dashboard
  devise_for :users, controllers: { registrations: :registrations\
  , sessions: :sessions }
 
  resources :profiles do
     resources :achievements
     resources :qualifications
  end
  resources :paintings

  resources :blogs do
    collection do
      get :like
      get :dislike
    end
    resources :comments
  end

  resources :client_histories
  resources :events
  resources :painting_categories
end
