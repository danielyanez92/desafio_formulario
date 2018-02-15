Rails.application.routes.draw do
  get 'sales', to: 'sales#index'
  get 'sales/new'
  post 'sales', to: 'sales#create'
  root 'sales#new'
  get 'sales/done'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
# get 'posts', to: 'posts#index'
# post 'posts', to: 'posts#create'
# root 'posts#index'
# get 'posts/new'
# get 'posts/:id', to: 'posts#show', as: 'post'
# get 'posts/:id/edit', to: 'posts#edit', as: 'edit_post'
# patch 'posts/:id', to: 'posts#update'
# delete 'posts/:id', to: 'posts#destroy', as: 'delete_post'
