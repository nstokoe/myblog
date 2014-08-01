Myblog::Application.routes.draw do

  root  'static_pages#splash'

  unless Rails.env.production?
    resources :users
    match '/home', to: 'static_pages#home', via: 'get'
    match '/help', to: 'static_pages#help', via: 'get'
    match '/about', to: 'static_pages#about', via: 'get'
    match '/contact', to: 'static_pages#contact', via: 'get'
    match '/signup', to: 'users#new', via: 'get'
  end

end
