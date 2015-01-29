Innovationwomen::Application.routes.draw do
  resources :profiles do
    resources :topics
  end

  root to: 'welcome#index'
  get 'about', to: 'welcome#about'
  get 'search', to: 'profiles#search'
  get 'find_profile', to: 'welcome#coming_soon'
  get 'new_event', to: 'welcome#coming_soon'
  get 'events', to: 'welcome#coming_soon'
  get 'organizations', to: 'welcome#coming_soon'
end
