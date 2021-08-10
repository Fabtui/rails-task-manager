Rails.application.routes.draw do
  root to: 'tasks#about'
  get "tasks/new", to: "tasks#new", as: :new
  post "tasks", to: "tasks#create"
  get 'show/:id', to: 'tasks#show', as: :show
  get "tasks/:id/edit", to: "tasks#edit", as: :edit
  patch "tasks/:id", to: "tasks#update", as: :task
  delete "tasks/:id", to: "tasks#destroy", as: :destroy
end
