Rails.application.routes.draw do
	resources :answers, only: [:new, :create, :show, :update, :destroy]

  resources :questions
  root to: "questions#index"

  get 'posts/index'

  get 'posts/show'

  get '/login' => 'users#new'

  get 'tags/new'

  get 'tags/index'

  get 'tags/show'

  get 'tags/update'

  get 'tags/destroy'

  get 'users/new'

  get 'users/create'

  get 'users/show'

  get 'users/update'

  get 'users/destroy'


root to: 'questions#index'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
