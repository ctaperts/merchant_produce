Rails.application.routes.draw do

  root 'admin/products#index'

  namespace :admin do
    resources :products
    resources :brands
    resources :categories
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
