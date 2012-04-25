module Activemonitor
  class RequestController < ApplicationController
    def index
      REDIS.rpop('requests')
      @requests = REDIS.lrange('requests', 0, -1)
    end
  end
end
