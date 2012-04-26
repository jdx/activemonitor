ActiveSupport::Notifications.subscribe "process_action.action_controller" do |name, start, finish, id, payload|
  ActiveMonitor::Action.add_request(name, start, finish, id, payload)
end
