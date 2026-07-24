Rails.application.routes.draw do
  resources :post_images do
    resource :favorite, only: [:create, :destroy]
    resources :post_comments, only: [:create, :destroy]
  end

resources :users, only: [:new, :create, :show, :edit, :update]

resource :session
resources :passwords, param: :token

root to: "homes#top"
get 'homes/about', to: 'homes#about', as: 'about'

end
