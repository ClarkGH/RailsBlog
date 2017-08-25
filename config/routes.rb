Rails.application.routes.draw do
  get 'welcome/index'

  resources :articles do
    resources :comments, only: [:create, :destroy]
  end
  get '/articles/:article_id/comments', to: redirect('/articles/%{article_id}')

  root 'welcome#index'
end
