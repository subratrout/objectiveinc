Rails.application.routes.draw do
  root to: "applicants#index"
  resources :applicants

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
