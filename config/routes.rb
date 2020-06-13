Rails.application.routes.draw do

  get 'message/index' => 'message#index'
  get 'message/confirm' => 'message#content'
  get 'message/done'    => 'message#done'

  root 'homes#top'

  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }



  resources :users, only:[:show, :edit, :update, :new]
  resources :posts
  resources :bookmarks, only:[:show, :create, :index, :destroy]
  resources :favorites, only:[:create, :destroy]
  resources :maker_janrus, only:[:index]
  resources :color_janrus, only:[:index]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
