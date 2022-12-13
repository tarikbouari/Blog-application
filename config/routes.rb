Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
 
  # Display all the list of users
  get 'users/', to: 'users#index' 

  #display a specific user
  get 'users/:id', to: 'users#show'

  #display all the post for a specific user
  get 'users/:user_id/posts', to: 'posts#index

end
