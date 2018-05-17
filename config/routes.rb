Rails.application.routes.draw do

  scope "(:page)", page: /public_procurement|public_relations/ do
	  resources :page_links
	  resources :documents
	  resources :attachments
	end
	  get 'public_procurement', to: 'pages#public_procurement'
	  get 'public_relations', to: 'pages#public_relations'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
