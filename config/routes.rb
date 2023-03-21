Rails.application.routes.draw do
  # devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # User gets directed to landing page
  # Explain app to user
  get 'patient_sessions/new', to: 'patient_sessions#new'

  # Users is asked for unique identifier on landing page & selects main problem
  # Explain app to user
  post 'patient_sessions', to: 'patient_sessions#create'

  # User is asked their demographics and history via questionnaire
  get 'patient_sessions/:id/edit', to: 'patient_sessions#edit', as: 'edit_patient_session'
  patch 'patient_sessions/:id', to: 'patient_sessions#update'

  # # (Templated prompts sent as requests to GPT via API)
  # post 'patient_sessions/:id', to: 'patient_sessions#create_prompt'

  # Doctor logs in
  # Doctor sees unique identifier and urgency rating
  get 'patient_sessions', to: 'patient_sessions#index'

  # Doctor selects patient entry
  get 'patient_sessions/:id', to: 'patient_sessions#show', as: 'patient_session'

  # Doctor is able to add notes and close patient entry
  get 'patient_sessions/:id/edit', to: 'patient_sessions#edit'

  patch 'patient_sessions/:id/close', to: 'patient_sessions#close'

  # Doctor routes
  resources :doctors, only: [:index, :show]


end
