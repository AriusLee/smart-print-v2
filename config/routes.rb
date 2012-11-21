SmartPrintV2::Application.routes.draw do
  root :to => "home#index"

  resources :products, :only => ['index']

  resource :products, :path => 'products', :only => [] do
     collection do
       get 'popup_system'
     end
   end

end
