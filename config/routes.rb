RcIva::Application.routes.draw do
  resources :forms

  root 'welcome#index'
end
