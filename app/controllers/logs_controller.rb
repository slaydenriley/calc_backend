class LogsController < ApplicationController
  def index
    logs = Log.all
    render json: logs
  end

  def create
    if Log.create(logs: params[:logs])
      logs = Log.all
      render json: logs
    end
  end
end
