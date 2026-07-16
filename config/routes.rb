Rails.application.routes.draw do
  resource :session
  resources :passwords, param: :token
  get "homes/top"
  root to: "homes#top"
end
