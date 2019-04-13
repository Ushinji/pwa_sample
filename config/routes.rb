Rails.application.routes.draw do
  resources :projects, param: :key_hash
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
