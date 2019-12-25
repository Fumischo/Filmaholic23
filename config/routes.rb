Rails.application.routes.draw do
  # root :to => 'oauth_test#index'

  devise_for :users, controllers: {
    registrations: "users/registrations",
    omniauth_callbacks: "users/omniauth_callbacks"
  }
  
  get '/show_foreign_amazonprime', to: 'static_pages#show_foreign_amazonprime'
  get '/show_foreign_netflix', to: 'static_pages#show_foreign_netflix'
  get '/show_foreign_hulu', to: 'static_pages#show_foreign_hulu'
  get '/show_japanese_amazonprime', to: 'static_pages#show_japanese_amazonprime'
  get '/show_japanese_netflix', to: 'static_pages#show_japanese_netflix'
  get '/show_japanese_hulu', to: 'static_pages#show_japanese_hulu'
  get '/show_anime_amazonprime', to: 'static_pages#show_anime_amazonprime'
  get '/show_anime_netflix', to: 'static_pages#show_anime_netflix'
  get '/show_anime_hulu', to: 'static_pages#show_anime_hulu'
  
  resources :movies do
    resources :reviews
  end
  root 'static_pages#home'

  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
