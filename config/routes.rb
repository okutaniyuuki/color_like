Rails.application.routes.draw do
  root 'homes#top'

  get 'message/index' => 'message#index'
  get 'message/confirm' => 'message#confirm'
  get 'message/done'    => 'message#done'

  #get 'posts/search'   =>  'posts#search'
  get 'post_search'   =>  'posts#search', as:   'post_search'
  #get 'users/index/:id' => 'users#index'

  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }



  resources :users, only:[:show, :edit, :update, :new, :destroy]
  resources :posts do
    post 'createbookmarks'
    delete 'desbookmarks'
    post 'createfavorites'
    delete 'desfavorites'
  end
  resources :bookmarks,only:[:index]
 # resources :favorites, only:[:create, :destroy]
  resources :maker_janrus, only:[:index, :create]
  resources :color_janrus, only:[:index]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
