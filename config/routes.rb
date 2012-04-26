ActiveMonitor::Engine.routes.draw do
  resources :actions
  root to: 'dashboard#index'
end
