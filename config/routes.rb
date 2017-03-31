Rails.application.routes.draw do

  resources :iga_baselines
  root 'iga_baselines#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
