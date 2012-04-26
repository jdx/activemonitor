Rails.application.routes.draw do

  get "sleep/:count" => "sleep#sleep"

  root :to => "home#index"

  mount ActiveMonitor::Engine => "/monitor"
end
