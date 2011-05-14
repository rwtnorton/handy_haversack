HandyHaversack::Application.routes.draw do
  resources :items

  devise_for :users

  # Necessary to specify a root_path for devise.
  root :to => "home#index"
end
