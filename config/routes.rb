Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  mount Label::Engine, at: '/label'
  mount Task::Engine, at: '/task'
end
