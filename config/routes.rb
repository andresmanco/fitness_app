Rails.application.routes.draw do
  root 'welcome#index'
  resources :users do
    resources :workouts
    resources :exercises
    resources :workout_exercises
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/login" => "sessions#new"
  post "/login" => "sessions#create"
  delete "/logout" => "sessions#destroy"
end
