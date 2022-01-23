Rails.application.routes.draw do
  get 'books/:id' => 'books#show', as: 'book'
  get 'books/:id/edit' => 'books#edit', as: 'edit_book'
  patch 'books/:id' => 'books#update', as: 'update_book'
  get '/' => 'homes#top'
  get 'books/index' => 'books#index'
  post 'books/index' => 'books#create'
  resources :books
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
