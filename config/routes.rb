Rails.application.routes.draw do
  devise_for :users
  get 'home/index'

  resources :images
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#index"

  namespace 'api' do

    namespace 'v1' do
    
      post 'auth_user' => 'authentication#authenticate_user'
      resources :images
      post "sign_up" => 'registration#create'
      resources :locations
      resources :products
      resources :sales
      resources :news
      resources :contacts
    end
    
  end

end
