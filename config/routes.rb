Rails.application.routes.draw do
  root 'home#index'
  resources :inteligencia_artificials
  
  get "up" => "rails/health#show", as: :rails_health_check

end
