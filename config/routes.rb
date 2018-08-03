Rails.application.routes.draw do
  root 'welcome#index'
  resources :users do
    resources :workouts, only: [:index, :show, :new, :create, :edit, :update] do
      resources :workout_exercises, only: [:index, :edit, :update]
    end
    resources :exercises, only: [:index, :show, :new, :create, :edit, :update]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/login" => "sessions#new"
  post "/login" => "sessions#create"
  delete "/logout" => "sessions#destroy"
end
