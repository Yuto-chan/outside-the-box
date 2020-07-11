Rails.application.routes.draw do
  # get 'likes/create'
  # get 'likes/destroy'
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
  devise_scope :user do
    post 'users/guest_sign_in', to: 'users/sessions#new_guest'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "groups#index"
  resources :users, only: [:edit, :update] 
  resources :groups, only: [:index] do
    resources :messages, only: [:index, :create] do
      resources :likes, only: [:create, :destroy]
    end
  end
  # resources :likes, only: [:create, :destroy]
end
