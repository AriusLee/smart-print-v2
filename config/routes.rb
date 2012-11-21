SmartPrintV2::Application.routes.draw do
  root :to => "home#index"

  resources :products, :only => ['index']

end
