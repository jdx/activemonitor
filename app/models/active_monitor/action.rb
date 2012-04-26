module ActiveMonitor
  class Action
    class << self
      def add_request(name, start, finish, id, payload)

        # Massage the data a bit
        action = "#{payload[:controller]}##{payload[:action] }"
        duration = (finish - start) * 1000
        request = {
          name: name,
          start: start.to_i,
          finish: finish.to_i,
          duration: duration,
          id: id,
          payload: payload
        }

        # Add the hash reverse lookup for the action
        REDIS.set Digest::MD5.hexdigest(action), action

        # Add action to generate a sorted list of all actions
        num_requests = REDIS.llen("#{action}:requests")
        former_average_duration = REDIS.zscore('actions', action)
        average_duration = (duration*0.1)+(former_average_duration.to_f*0.9)
        REDIS.zadd 'actions', average_duration, action

        # Add request to the list of requests on this action
        REDIS.lpush "#{action}:requests", request.to_json
      end

      def get(md5)
        self.new(md5)
      end

    end

    attr_accessor :action

    def to_param
      Digest::MD5.hexdigest(@action)
    end

    def initialize(md5)
      @action = REDIS.get(md5)
    end

    def to_s
      @action
    end

    def requests
      REDIS.lrange("#{@action}:requests", 0, -1).map { |r| JSON(r) }
    end

  end
end
