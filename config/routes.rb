Rails.application.routes.draw do
  
  get 'swipers/index'
  controller :homes do
    root to: "homes#top"
    resources :homes, only: [:index]
  end
  
  controller :samples do
    resources :samples, only: [:index, :show]
  end
  
  controller :backs do
    resources :backs, only: [:index, :show]
  end

  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
