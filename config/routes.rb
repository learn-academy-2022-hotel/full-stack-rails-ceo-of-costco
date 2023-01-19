Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get 'blogs' => 'blog#index', as: 'blogs'
  get 'blogs/new' => 'blog#new'
  get 'blogs/:id' => 'blog#show', as: 'blog'
end
