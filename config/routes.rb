Rails.application.routes.draw do
  resources :messages, only: %w[create destroy]

  root to: "messages#index"
end
