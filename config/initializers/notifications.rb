ActiveSupport::Notifications.subscribe "process_action.action_controller" do |name, start, finish, id, payload|
  duration = (finish - start) * 1000
  request = {
    name: name,
    duration: duration,
    id: id,
    payload: payload
  }
  REDIS.lpush 'requests', request
  REDIS.zadd 'actions', duration, "#{payload[:controller]}##{payload[:action] }"
end
