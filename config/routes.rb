Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'books#top'

  get '/books' => 'books#index', as: 'books'
  get '/books/:id' => 'books#show', as: 'book'
  get '/books/:id/edit' => 'books#edit', as: 'book_edit'

  post '/books' => 'books#create'
  patch '/books/:id' => 'books#update'

  delete '/books/:id' => 'books#delete', as: 'book_destroy'
end
