Rails.application.routes.draw do
  get '/about_us', to: 'static_pages#about_us'
  get '/regulations', to: 'static_pages#regulations'
end

