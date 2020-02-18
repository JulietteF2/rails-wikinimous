Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'articles#index'

  get 'articles/:id/delete', to: 'articles#destroy', as: 'delete_article'
  delete 'articles/:id/delete', to: 'articles#destroy'

  resources :articles
end
