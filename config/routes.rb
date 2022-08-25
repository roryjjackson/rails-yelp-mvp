Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"
  # resources :restaurants

  resources :restaurants do
    collection do
      get :index
    end
  end

  resources :restaurants do
    resources :reviews, only: [:new]
  end
end
