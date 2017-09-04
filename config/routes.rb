Rails.application.routes.draw do

  get 'testfile/home'

  root to: "posts#index"

  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'

  #get 'post/new', to: 'posts#new'
  #post 'post', to: 'post#create'

resources :posts, only: [:destroy, :index, :show, :new, :create, :edit, :update]
#resources: model_name_in_plural_form i.e posts and not post

end
