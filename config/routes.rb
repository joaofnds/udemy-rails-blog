Rails.application.routes.draw do
	root 'welcome#index'
	get 'about', to: 'welcome#about'

	get 'singup', to: 'users#new'
	resources :users, except: [:new]

	get 'login', to: 'sessions#new'
	post 'login', to: 'sessions#create'
	delete 'logout', to: 'sessions#destroy'

	resources :articles
	resources :categories
end
