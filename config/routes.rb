CurrencyCow::Application.routes.draw do
  post "converter/convert"
  resources :currencies

  root 'currencies#index'
end
