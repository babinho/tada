Tada::Application.routes.draw do
  devise_for :users
  resources :items
  root to: "items#index"
end
