Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to:"cocktails#index"
  resources :cocktails, only: [:index, :new, :create, :show] do
    resources :doses, only: [:new, :create, :destroy]
  end
end

  # get "cocktails", to: "cocktails#index"

  # get "cocktails/new", to: "cocktails#new",  as: :new_cocktail
  # post "cocktails", to: "cocktails#create"
  
  # get "cocktails/:id", to: "cocktails#show", as: :cocktail

  # get "cocktails/:id/edit", to: "cocktails#edit", as: :edit_cocktail
  # patch "cocktails/:id", to: "cocktails#update"

  # delete "cocktails/:id", to: "cocktails#destroy"
# end
