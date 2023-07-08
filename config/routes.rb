Rails.application.routes.draw do
  resources :categories, except: [:update] do
    resources :payments, except: [:update]
  end

  devise_for :users
  devise_scope :user do
    get '/logout', to: 'devise/sessions#destroy'
  end

  root to: 'users#index'
end
