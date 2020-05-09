Rails.application.routes.draw do

  get '/user/:id', to: 'users#show'
  post '/user/new', to: 'user#create'

  get '/user/:id/boards', to: 'boards#index'
  post '/user/:id/boards/new', to: 'boards#create'
  get 'user/:id/board/:id', to: 'boards#show'
  put '/board/:id/update', to: 'boards#update'
  # post '/user/:id/board/:id/delete', to: 'boards#destroy'

  get '/card/:id', to: 'cards#show'
  post '/board/:id/cards/new', to: 'cards#create'
  # post '/cards/delete/:id', to: 'cards#destroy'
  get '/board/:id/cards', to: 'cards#index'
  put '/card/update/:id', to: 'cards#update'


  post '/card/:id/tasks/new', to: 'tasks#create'
  # post '/tasks/delete/:id', to: 'tasks#destroy'
  put '/task/update/:id', to: 'tasks#update'

  get '/task/:id/checklists', to: 'checklists#index'
  post '/task/:id/checklists/new', to: 'checklists#create' 
  get '/checklists/:id', to: 'checklists#show'
  put '/checklists/:id/update', to: 'checklists#update'
  post '/checklists/:id/delete', to: 'checklists#destroy'

  post '/checklist/:id/item/new', to: 'items#create' 
  get '/checklist/:id/items', to: 'items#index'
  get '/items/:id', to: 'items#show'
  put '/items/:id/update', to: 'items#update'
  post '/items/:id/delete', to: 'items#destroy'


  get '/labels', to: 'labels#index'
  get '/task_labels', to: 'labels#task_labels'
  get '/label/:id', to: 'labels#show'
  post '/task/:id/label/:id', to: 'labels#create'
  post '/task_label/:id/delete', to: 'labels#destroy'
  put '/label/:id/update', to: 'labels#update'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
