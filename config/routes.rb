HandyHaversack::Application.routes.draw do
  resources :items

  devise_for :users do
    # Use /sign_in along with /users/sign_in.
    get  :sign_in,  :to => 'devise/sessions#new'
    post :sign_in,  :to => 'devise/sessions#create'
    match '/users/sign_in', :to => redirect('/sign_in')

    # Use /sign_out along with /users/sign_out
    get  :sign_out, :to => 'devise/sessions#destroy'
    match '/users/sign_out', :to => redirect('/sign_out')

    # Use /sign_up along with /users/sign_up
    get  :sign_up,  :to => 'devise/registrations#new'
    post :sign_up,  :to => 'devise/registrations#create'
    match '/users/sign_up', :to => redirect('/sign_up')
  end

  # Necessary to specify a root_path for devise.
  root :to => "items#index"
end
