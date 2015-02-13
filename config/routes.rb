# pas besoin de route sur ingrédient parce qu'on passe par doses pour les afficher
# la liste des doses sera affichée directement depuis le show de cocktail

Rails.application.routes.draw do

  resources :cocktails, only: [:index, :show, :new, :create] do
    resources :doses, only: [:new, :create, :destroy]
    end

  root 'cocktails#index'
end
