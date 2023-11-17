Rails.application.routes.draw do
  # get 'do_its/index'
  # get 'do_its/new'
  # get 'do_its/create'
  # get 'do_its/edit'
  # get 'do_its/destroy'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root "do_its#index"
  resources :do_its, only: [:index, :create, :destroy, :update, :edit, :new]
end
