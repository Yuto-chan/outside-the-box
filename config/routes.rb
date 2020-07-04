Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
  devise_scope :user do
    post 'users/guest_sign_in', to: 'users/sessions#new_guest'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # root "messages#index"
  root "groups#index"
  # get 'messages/index'
  # post '/groups/guest_sign_in', to: 'groups#new_guest'
  resources :users, only: [:edit, :update] 
  resources :groups, only: [:index] do
    resources :messages, only: [:index, :create]
  end
end
