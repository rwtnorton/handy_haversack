HandyHaversack::Application.routes.draw do
  get "items/new"

  get "items/index"

  get "items/edit"

  get "items/show"

  get "items/create"

  get "items/update"

  get "items/destroy"

  devise_for :users

  # Necessary to specify a root_path for devise.
  root :to => "home#index"
end
