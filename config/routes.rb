Rails.application.routes.draw do
  devise_for :patients
  root to: 'hospitals#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
