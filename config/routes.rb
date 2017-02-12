Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  devise_for :users

  resources :posts do
    resources :comments
  end

  root 'home#index'

  get "/pages/:page" => "pages#show"

end
