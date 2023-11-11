Rails.application.routes.draw do
  
  
  get 'backs/index'
  get 'backs/show'
  controller :homes do
    root to: "homes#top"
    resources :homes, only: [:index]
  end
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
