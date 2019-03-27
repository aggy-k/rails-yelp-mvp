Rails.application.routes.draw do
  get 'reviews/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :restaurants do
    resources :reviews, only: [:index, :create]
  end

  root to: 'restaurants#index'
end
