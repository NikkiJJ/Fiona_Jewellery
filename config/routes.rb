Rails.application.routes.draw do
  root to: 'jewellery_items#index'
  resources :jewellery_items
end
