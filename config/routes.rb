Rails.application.routes.draw do
  
  resources :students, only: [:new, :edit, :create, :update, :show]
  resources :school_classes, only: [:new, :edit, :create, :update, :show]
  
end

