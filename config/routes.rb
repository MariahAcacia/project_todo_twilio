Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'tasks#index'
  resources :tasks

  post "tasks/:id/soft_delete", :to => 'tasks#soft_delete', as: 'soft_delete'

end
