module ActiveMonitor
  class ActionsController < ActiveMonitor::ApplicationController
    before_filter :set_active_tab

    def index
      @actions = REDIS.zrange 'actions', 0, -1, withscores: true
      @actions.reverse!
      @actions = @actions.each_slice(2)
    end

    def show
      @action = Action.get(params[:id])
      timings = @action.requests.map do |request|
        [request["start"], request["duration"]]
      end

      respond_to do |format|
        format.html
        format.json { render json: timings }
      end
    end

    private

    def set_active_tab
      @active_tab = :actions
    end
  end
end
