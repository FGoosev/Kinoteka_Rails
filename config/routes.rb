Rails.application.routes.draw do
  devise_for :users
  scope :admin do
    devise_for :admins
  end
  root 'pages#index'
  resources :movies do
    resources :ratings
  end
  post 'search' => 'pages#index'
end
