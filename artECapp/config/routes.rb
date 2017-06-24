Rails.application.routes.draw do
  devise_for :users, controllers: {
  	sessions: 'users/sessions',
  	passwords: 'users/passwords',
  	confirmations: 'users/confirmations',
  	registrations: 'users/registrations'
  }
  devise_for :admins, controllers: {
  	sessions: 'admins/sessions',
  	passwords: 'admins/passwords',
  	confirmations: 'admins/confirmations'
  }


  # if Rails.env.development?
  #   mount LetterOpenerWeb::Engine, at: "/letter_opener"
  # end


  root 'home#top'
  resources :products
  resources :admins, only: [:show]
  resources :users, only: [:show]
  resources :orders, only: [:new, :create]

  
end
