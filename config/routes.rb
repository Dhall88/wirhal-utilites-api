Rails.application.routes.draw do
  resources :zips
  resources :multiplication_scores
  resources :division_scores
  resources :subtraction_scores
  resources :addition_scores
  resources :bar_scores
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
