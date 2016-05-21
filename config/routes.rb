Rails.application.routes.draw do

  get 'user/index'

  devise_for :users

  authenticated :user do
   root 'users#index'
  end

  unauthenticated :user do
    devise_scope :user do
      get "/" => "devise/sessions#new"
    end
  end

  resources :conversations do
    resources :messages
  end

 # get 'chatserver/chat'
  get 'welcome/index'

  resources :categories do
    resources :products
  end

 # root to: "welcome#index"

end
