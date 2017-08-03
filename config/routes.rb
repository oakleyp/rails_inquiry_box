Rails.application.routes.draw do
	resources :answers, only: [:new, :create, :show, :update, :destroy]

  resources :questions

  resources :users

  root to: "questions#index"

	get 'signup' => 'user#new'
		resources :users
  get 'posts/index'

  get 'posts/show'

  get '/login' => 'sessions#new'
	post 'login' => 'sessions#create'
	delete 'logout' => 'sessions#destroy'


  get 'tags/new'

  get 'tags/index'

  get 'tags/show'

  get 'tags/update'

  get 'tags/destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
