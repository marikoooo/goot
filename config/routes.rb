Rails.application.routes.draw do
  root 'home#index'

  devise_for :admins, controllers: {
    sessions: 'admins/sessions'
  }
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations',
    passwords: 'users/passwords',
    confirmations: 'users/confirmations'
  }

  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end

  resources :countries, only: [:index, :show]
  resources :travel_journals
  resources :travel_mates
  namespace :admins do
    resources :countries
    resources :travel_journals
    resources :travel_mates
    resources :users
  end

  get 'admins/dashboard', to: 'admins#dashboard', as: 'dashboard'
  get 'users/mypage/:id', to: 'users#mypage', as: 'mypage'
end
