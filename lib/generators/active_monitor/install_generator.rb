module ActiveMonitor
  class InstallGenerator < Rails::Generators::Base
    def setup_routes
      route 'mount ActiveMonitor::Engine => "/monitor"'
    end
  end
end
