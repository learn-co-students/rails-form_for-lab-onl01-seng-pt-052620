Rails.application.routes.draw do

  resources :school_classes, only: [:new, :create, :edit, :update]
  resources :school, only: [:new, :create, :edit, :update, :show, :index]
  resources :students
  get '/school_classes/:id', to: 'school_class#show'
  get 'school/controller'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
