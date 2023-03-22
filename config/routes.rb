Rails.application.routes.draw do
  get 'symptoms/index'
  get 'symptoms/show'
  get 'symptoms/new'
  get 'symptoms/create'
  get 'symptoms/edit'
  get 'symptoms/update'
  get 'symptoms/destroy'
  get 'users/index'
  get 'users/show'
  get 'users/new'
  get 'users/edit'
  devise_for :users
  root to: "pages#home"

  get 'consultations/new', to: 'consultations#new'
  post 'consultations', to: 'consultations#create'
  get 'consultations/:id/edit', to: 'consultations#edit', as: 'edit_consultation'
  patch 'consultations/:id', to: 'consultations#update'
  get 'consultations', to: 'consultations#index'
  get 'consultations/:id', to: 'consultations#show', as: 'consultation'
  get 'consultations/:id/edit', to: 'consultations#edit'
  patch 'consultations/:id/close', to: 'consultations#close'

  get 'symptoms/new', to: 'symptoms#new'
  post 'symptoms', to: 'symptoms#create'
  get 'symptoms/:id/edit', to: 'symptoms#edit', as: 'edit_symptom'
  patch 'symptoms/:id', to: 'symptoms#update'
  get 'symptoms', to: 'symptoms#index'
  get 'symptoms/:id', to: 'symptoms#show', as: 'symptom'
  get 'symptoms/:id/edit', to: 'symptoms#edit'
  patch 'symptoms/:id/close', to: 'symptoms#close'
end
