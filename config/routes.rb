SmartPrintV2::Application.routes.draw do
  root :to => "home#index"

  resources :products, :only => ['index']
  resources :contacts, :only => ['index']

  resource :products, :path => 'products', :only => [] do
     collection do
       get 'popup_system'
       get 'canvas'
       get 'poster'
     end
   end

end
