Rails.application.routes.draw do
  get 'top'=>'homes#home'
  get 'show'=>'books#show'
  get 'lists'=>'books#index'
  get 'edit'=>'books#edit'
  get 'new'=>'books#new'
  post 'lists'=>'books#show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end