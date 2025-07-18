Rails.application.routes.draw do
  get 'lists/new'
  post 'lists' => 'lists#create'   #ここを追記します

  get 'lists' => 'lists#index'
  
  get 'lists/:id/edit' => 'lists#edit', as: 'edit_list'
  patch 'lists/:id' => 'lists#update', as: 'update_list'
  delete 'lists/:id' => 'lists#destroy', as: 'destroy_list'
  get '/top' => 'homes#top'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # .../lists/1 や .../lists/3 に該当する
  get 'lists/:id' => 'lists#show', as: 'list'
end
