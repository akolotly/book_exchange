Rails.application.routes.draw do
  resources :books
  get '/about_us', to: 'static_pages#about_us'
  get '/regulations', to: 'static_pages#regulations'
end

