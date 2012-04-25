Rails.application.routes.draw do

  root :to => "home#index"

  mount Activemonitor::Engine => "/activemonitor"
end
