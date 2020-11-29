Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :restaurants do
    resources :reviews, only: [ :new, :create ]
  end
  resources :reviews, only: [ :destroy ]

  resources :restaurants do
    member do
      get :chef
    end
  end

  resources :restaurants do
    collection do
      get :top
    end
  end 
end

# what does do, :only, member do, collection do do
