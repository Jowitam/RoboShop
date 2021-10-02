Rails.application.routes.draw do
  get 'regulamin', to: "static#terms", as: :terms
  get 'polityka-prywatnosci', to: "static#privacy", as: :privacy
  get 'dostawy', to: "static#shipping", as: :shipping
  get 'o-sklepie', to: "static#about", as: :about


  root to: "products#index"
  resources :products, only: [:index, :show]
  resources :categories, only: [:show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
