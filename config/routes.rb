SmartPrintV2::Application.routes.draw do
  root :to => "home#index"

  resources :products, :only => ['index']

  resource :products, :path => 'products', :only => [] do
     collection do
       get 'popup_system'
       get 'canvas'
     end
   end

end
