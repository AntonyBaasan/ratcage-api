Rails.application.routes.draw do
  get "projects/count", to: "projects#count"
  resources :projects
  resources :rats
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
