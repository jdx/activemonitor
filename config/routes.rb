ActiveMonitor::Engine.routes.draw do
  resources :actions
  root to: 'actions#index'
end
