Rails.application.routes.draw do
  get 'details/personal'


  get 'test/func'
  resources :details
  resources :comments
  root 'test#func'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
