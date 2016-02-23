Rails.application.routes.draw do
  root to: "users#index"
  resources :users, only: [:index] do
    get :data_table, on: :collection
  end
end
