Rails.application.routes.draw do
  root to: "employees#index"

  resources :employees, only: :index

  resources :employees, only: [] do
    member do
      patch :set_table
    end
  end
end
