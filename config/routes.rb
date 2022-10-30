Rails.application.routes.draw do
  resources :savermarts, path: 'savermarts' do
    collection { 
      get :index , via: :options
      post :create , via: :options  
      delete :destroy , via: :options
    }
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
