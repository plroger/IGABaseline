Rails.application.routes.draw do
  #get 'startup/index'

  resources :iga_baselines
  get 'iga_baselines/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
