Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  devise_for :users

  resources :posts do
    resources :comments
  end

  root 'home#index'
  
  # pass the page parameter in as an array.
  get "/pages/*page" => "pages#show"

end
