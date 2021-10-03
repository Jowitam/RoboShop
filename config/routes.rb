Rails.application.routes.draw do
  namespace :admin do
    get 'categories/index'
    get 'categories/new'
    get 'categories/edit'
  end
  namespace :admin do
    get 'products/index'
    get 'products/new'
    get 'products/edit'
  end
  get 'regulamin', to: "static#terms", as: :terms
  get 'polityka-prywatnosci', to: "static#privacy", as: :privacy
  get 'dostawy', to: "static#shipping", as: :shipping
  get 'o-sklepie', to: "static#about", as: :about


  root to: "products#index"
  resources :products, only: [:index, :show], path: "produkt"
  resources :categories, only: [:show], path: "kategoria"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
