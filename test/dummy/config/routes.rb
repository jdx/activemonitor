Rails.application.routes.draw do

  get "sleep/:count" => "sleep#sleep"

  root :to => "home#index"

  mount Activemonitor::Engine => "/activemonitor"
end
