Rails.application.routes.draw do
  resources :projects, param: :key_hash, only: [:show]
end
