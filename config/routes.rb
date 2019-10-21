Rails.application.routes.draw do
  root 'uploads#new'

  post 'parse', to: 'uploads#parse'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
