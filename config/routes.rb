Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  delete 'articles/:id', to: 'articles#destroy', as: :delete_article
  resources :articles, only: [:create, :index, :edit, :update, :new, :show]
end
