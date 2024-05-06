Rails.application.routes.draw do
  devise_for :users
  root to: 'jewellery_items#index'
  resources :jewellery_items
end
