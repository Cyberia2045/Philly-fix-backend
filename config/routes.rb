Rails.application.routes.draw do

    resources :users
    resources :issues
    resources :dispatchers
    resources :issue_users
    resources :issue_dispatchers
    resources :sessions
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
