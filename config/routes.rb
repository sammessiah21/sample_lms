Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
   root "books#index"
   get 'about' => 'add_books#about'

   resources :books
end
