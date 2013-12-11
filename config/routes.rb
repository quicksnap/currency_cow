CurrencyCow::Application.routes.draw do
  resources :currencies

  root 'currencies#index'
end
