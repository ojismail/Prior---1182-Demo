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
  get 'user_sessions/new', to: 'user_sessions#new'

  # Users is asked for unique identifier on landing page & selects main problem
  # Explain app to user
  post 'user_sessions', to: 'user_sessions#create'

  # User is asked their demographics and history via questionnaire
  get 'user_sessions/:id/edit', to: 'user_sessions#edit', as: 'edit_user_session'
  patch 'user_sessions/:id', to: 'user_sessions#update'

  # # (Templated prompts sent as requests to GPT via API)
  # post 'user_sessions/:id', to: 'user_sessions#create_prompt'

  # Doctor logs in
  # Doctor sees unique identifier and urgency rating
  get 'user_sessions', to: 'user_sessions#index'

  # Doctor selects user entry
  get 'user_sessions/:id', to: 'user_sessions#show', as: 'user_session'

  # Doctor is able to add notes and close user entry
  get 'user_sessions/:id/edit', to: 'user_sessions#edit'

  patch 'user_sessions/:id/close', to: 'user_sessions#close'
end
