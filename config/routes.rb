Rails.application.routes.draw do
  get 'movies/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'mains#mains'
  
  get '/mains/mains' => 'mains#mains'
  get '/lottos/index' => 'lottos#index'
  get '/lottos/new' => 'lottos#new'
  get '/lottos/recent' => 'lottos#recent'
  
  
  get '/reviews' => 'reviews#index'
  get '/reviews/new' => 'reviews#new'
  post '/reviews/new' => 'reviews#new'
  post '/reviews/create' => 'reviews#create'
  get '/reviews/:id/show' => 'reviews#show'
  
  get '/reviews/:id/delete' => 'reviews#destroy'
  get '/reviews/:id/edit' => 'reviews#edit'
  patch '/reviews/:id/update' => 'reviews#update'
  
  get '/movies/index' => 'movies#index'
  

end  
  
  