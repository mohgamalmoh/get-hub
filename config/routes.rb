Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :repositories do
    match "popular", to: "github#get_popular", via: "get"
  end
end
