Rails.application.routes.draw do
  root "home#index"

  # === Authentication and registration ===
  get '/registration/new', to: 'registration#new'
  post '/registration', to: 'registration#create'

  get '/auth/new', to: 'auth#new'
  post '/auth', to: 'auth#create'
  delete '/auth', to: 'auth#destroy'

  # === Photos ===
  get '/photos', to: 'photos#index'
  get '/photos/:id', to: 'photos#show'

  get '/photos/new', to: 'photos#new'
  post '/photos', to: 'photos#create'

  get '/photos/:id/edit', to: 'photos#edit'
  patch '/photos/:id', to: 'photos#update'

  delete '/photos/:id', to: 'photos#destroy'

  # === User profile ===
  get '/user/:id', to: 'user#show'

  get '/user/:id/edit', to: 'user#edit'
  patch '/user/:id', to: 'user#update'

  delete '/user/:id', to: 'user#destroy'
end
