ActiveSupport::Notifications.subscribe "process_action.action_controller" do |name, start, finish, id, payload|
  request = {
    name: name,
    duration: (finish - start) * 1000,
    id: id,
    payload: payload
  }
  REDIS.lpush 'requests', request
end
