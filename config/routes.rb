Rails.application.routes.draw do
  get 'top'=>'homes#home'
  get 'books/:id'=>'books#show', as: 'book'
  get 'books'=>'books#index'
  get 'books/:id/edit'=>'books#edit', as: 'edit_book'
  post 'books'=>'books#create'
  delete 'books/:id'=> 'books#destroy', as: 'destroy_list'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end