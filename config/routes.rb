Rails.application.routes.draw do
# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

# create a task
get 'tasks/new', to: 'tasks#new'
post 'tasks', to: 'tasks#create'

# Display list of tasks
get 'tasks', to: 'tasks#index'

# Show a task
get 'tasks/:id', to: 'tasks#show', as: :task

# Update a task
get 'tasks/:id/edit', to: 'tasks#edit', as: :edito
patch 'tasks/:id', to: 'tasks#update'

# Delete a task
delete 'tasks/:id', to: 'tasks#destroy', as: :deleto
end
