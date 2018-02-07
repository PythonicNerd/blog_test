Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :posts do
    resources :comments
  end

  #get 'posts/:id/like' => 'posts#like'

  get 'posts/:id/like' => 'posts#like'
  get 'posts/:id/dislike' => 'posts#dislike'

  root 'posts#index'
end
