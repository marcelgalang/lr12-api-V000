Rails.application.routes.draw do
  resources :users

  namespace :api do
    resources  :diaper_twos,
     :diaper_ones,
     :right_bs,
     :left_bs
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
