Rails.application.routes.draw do
  get 'symptoms/index'
  get 'symptoms/show'
  get 'symptoms/new'
  get 'symptoms/create'
  get 'symptoms/edit'
  get 'symptoms/update'
  get 'users/index'
  get 'users/show'
  get 'users/new'
  get 'users/edit'
  devise_for :users
  root to: "pages#home"

  resources :chats, only: [:index, :create]

  resources :consultations do
    patch :close, on: :member
  end

  resources :chats do
    collection do
      post :clear
    end
  end

  get 'symptoms/new', to: 'symptoms#new'
  post 'symptoms', to: 'symptoms#create'
  get 'symptoms/:id/edit', to: 'symptoms#edit', as: 'edit_symptom'
  patch 'symptoms/:id', to: 'symptoms#update'
  get 'symptoms', to: 'symptoms#index'
  get 'symptoms/:id', to: 'symptoms#show', as: 'symptom'
  get 'symptoms/:id/edit', to: 'symptoms#edit'
  patch 'symptoms/:id/close', to: 'symptoms#close'
  delete 'symptoms/:id', to: 'symptoms#destroy', as: 'destroy_symptom'

end
