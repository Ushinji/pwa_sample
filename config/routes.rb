Rails.application.routes.draw do
  resources :projects, param: :key_hash, only: [:show]
  get "/manifest/:key_hash", to: "manifest#show", as: :manifest
end
