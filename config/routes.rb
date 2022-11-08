Rails.application.routes.draw do
  root :to => 'homes#home' #rootパス設定をすると最初に開くページを設定できる　
  resources :books
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end