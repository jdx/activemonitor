Activemonitor::Engine.routes.draw do
  resource :request
  root to: 'requests#index'
end
