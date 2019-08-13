Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "tasks", to: "tasks#index"
  # create
  get "tasks/new", to: "tasks#new"
  post "tasks", to: "tasks#create"
  # read one task
  get "tasks/:id", to: "tasks#show"
  # edit
  get "tasks/:id/edit", to: "tasks#edit", as:"edit_task"
  patch "tasks/:id", to: "tasks#update" , as:"task"
  # delete
  delete "tasks/:id", to: "tasks#destroy" ,as:""
end
