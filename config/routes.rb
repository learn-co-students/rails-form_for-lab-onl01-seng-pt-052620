Rails.application.routes.draw do
  resources :school_classes

  resources :students, only: [:index, :new, :create]
  get 'students/:id', to: 'students#show', as: 'student'
  get 'students/:id/edit', to: 'students#edit', as: :edit_student
  patch 'students/:id', to: 'students#update'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
