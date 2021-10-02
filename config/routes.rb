Rails.application.routes.draw do
  get 'static/terms'
  get 'static/privacy'
  get 'static/shipping'
  get 'static/about'
  get 'categories/show'
  get 'products/index'
  get 'products/show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
