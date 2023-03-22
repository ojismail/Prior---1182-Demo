Rails.application.routes.draw do
  get 'users/index'
  get 'users/show'
  get 'users/new'
  get 'users/edit'
  # devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # User gets directed to landing page
  # Explain app to user
  get 'consultations/new', to: 'consultations#new'

  # Users is asked for unique identifier on landing page & selects main problem
  # Explain app to user
  post 'consultations', to: 'consultations#create'

  # User is asked their demographics and history via questionnaire
  get 'consultations/:id/edit', to: 'consultations#edit', as: 'edit_user_session'
  patch 'consultations/:id', to: 'consultations#update'

  # # (Templated prompts sent as requests to GPT via API)
  # post 'consultations/:id', to: 'consultations#create_prompt'

  # Doctor logs in
  # Doctor sees unique identifier and urgency rating
  get 'consultations', to: 'consultations#index'

  # Doctor selects user entry
  get 'consultations/:id', to: 'consultations#show', as: 'user_session'

  # Doctor is able to add notes and close user entry
  get 'consultations/:id/edit', to: 'consultations#edit'

  patch 'consultations/:id/close', to: 'consultations#close'
end
