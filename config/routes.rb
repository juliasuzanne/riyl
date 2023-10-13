Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get "/infos" => "infos#index"
  get "/infos/:id" => "infos#show"
  post "/infos" => "infos#create"
  patch "/infos/:id" => "infos#update"
  delete "/infos/:id" => "infos#destroy"
end
