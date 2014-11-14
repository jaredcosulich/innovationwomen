Swtext::Application.routes.draw do
  get '/people/bulk', to: 'people#bulk', as: 'new_bulk_people' 
  post '/people/bulk', to: 'people#bulk', as: 'bulk_people' 

  resources :person_messages

  resources :messages

  resources :people

  root to: 'dashboard#index' 
end
