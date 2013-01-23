Tada::Application.routes.draw do
  devise_for :users
  resources :items do
    collection { post :sort }
  end
  root to: "items#index"
end
