Rails.application.routes.draw do

match '/about_us', to: 'static_pages#about_us', via: 'get'

end

