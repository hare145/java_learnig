Rails.application.routes.draw do
  

  get 'apply_samples/index'
  controller :homes do
    root to: "homes#top"
    resources :homes, only: [:index]
  end
  
  controller :samples do
    resources :samples, only: [:index]
    get 'sample' => "samples#show"
  end
  
  controller :backs do
    resources :backs, only: [:index]
    get 'back' => "backs#show"
  end
  
  controller :swipers do
    resources :swipers, only: [:index]
    get 'swiper' => "swipers#show"
  end
  
  controller :buttons do
    resources :buttons, only: [:index]
  end
  
  controller :menus do
    resources :menus, only: [:index]
  end
  
  controller :apply_samples do
    resources :apply_samples, only: [:index]
  end
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
