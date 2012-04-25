module Activemonitor
  class RequestsController < ApplicationController
    def index
      @requests = REDIS.zrange 'actions', 0, -1, withscores: true
      @requests.reverse!
      @requests = @requests.each_slice(2)
    end

    def show
      puts params[:format].inspect
    end
  end
end
