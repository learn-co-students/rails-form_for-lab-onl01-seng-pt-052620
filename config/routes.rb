Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :students
  resources :school_classes
  # get '/students/:id', to: 'students#show'
  # get '/school_classes/:id', to: 'school_classes#show'
end
