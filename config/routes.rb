SmartPrintV2::Application.routes.draw do
  root :to => "home#index"

  resources :products, :only => ['index']

  resource :products, :path => 'products', :only => [] do
    collection do
      get 'popup_system'
      get 'canvas'
      get 'poster'
    end
  end

  resources :infos, :path => '', :only => [] do
    collection do
      get 'contact_us'
      get 'about_us'
      get 'custom_service'
    end
  end

end
