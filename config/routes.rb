Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'signup' => 'usuarios#new'
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'
  get 'blogs' => 'blogs#index'
  get 'misblogs' => 'blogs#misblogs'
  post 'misblogs' => 'blogs#create'
  get 'blogs/new'
  root 'home#home'
  resources :usuarios
  resources :blogs
end
