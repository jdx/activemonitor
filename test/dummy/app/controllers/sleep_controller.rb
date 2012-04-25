class SleepController < ApplicationController
  def sleep
    Kernel.sleep params[:count].to_i
    flash[:notice] = "Slept for #{params[:count]} seconds."

    redirect_to root_path
  end
end
