Rails.application.routes.draw do
  get 'top'=>'homes#home'
  get 'show'=>'books#show'
  get 'index'=>'books#index'
  get 'edit'=>'books#edit'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
