Rails.application.routes.draw do
  devise_for :users
  resources :events do
    collection do
      get 'event_created'
    end
    resources :pics
  end
  resources :toppage, only: [:index] do
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root 'toppages#index'
end
