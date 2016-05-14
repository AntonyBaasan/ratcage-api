Rails.application.routes.draw do
  resources :projects
  resources :rats
  get "projects/count", to: "projects#count"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
