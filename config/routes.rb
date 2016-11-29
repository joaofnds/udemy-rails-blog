Rails.application.routes.draw do
	root 'welcome#index'
	get 'about', to: 'welcom#about'
end
