Rails.application.routes.draw do
	root 'welcome#index'
	get 'about', to: 'welcome#about'

	get 'singup', to: 'users#new'
	resources :users, except: [:new]

	resources :articles
end
