Rails.application.routes.draw do
  get 'articles/index'
  root controller: :articles, action: :index
  resources :articles, only: [:index, :new, :create, :show]
  
  resources :articles do
    resources :comments
  end
  
end
