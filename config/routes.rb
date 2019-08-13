Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get "/articles", to: 'articles#index'

  get "/articles/new", to: 'articles#new', as: :article_new
  post "/articles", to: 'articles#create'

  get "/articles/:id/edit", to: 'articles#edit', as: :article_edit
  patch "/articles/:id", to: 'articles#update'

  delete "/articles/:id", to: 'articles#destroy', as: :article_delete

  get "/articles/:id", to: 'articles#show', as: :article
end
