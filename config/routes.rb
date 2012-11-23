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
      get 'how_we_work'
      get 'faq'
      get 'digital_print'
    end
  end
  
  resources :how_we_work, :path => 'how_we_work', :only => [] do
    collection do
      get 'how_to_join'
      get 'how_to_order'
      get 'how_to_pay'
    end
  end
  
  resources :faqs, :path => 'faq', :only => [] do
    collection do
      get 'artwork'
      get 'membership'
      get 'payment'
      get 'products'
      get 'order'
      get 'delivery'
      get 'account'
    end
  end

end
