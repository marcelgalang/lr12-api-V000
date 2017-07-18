Rails.application.routes.draw do

  resources :users, :one_diapers,
     :two_diapers,
     :right_bs,
     :left_bs

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
