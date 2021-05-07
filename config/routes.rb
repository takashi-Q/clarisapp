Rails.application.routes.draw do
  get 'messages/new'
  get 'musics/index'
  get 'musics/search'
  root 'musics#index'
  resources :messages,only: [:new,:create]
end
