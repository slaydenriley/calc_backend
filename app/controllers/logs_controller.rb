class LogsController < ApplicationController
  def index
    logs = Log.all.order("created_at DESC")
    render json: logs
  end

  def create
    if Log.create(logs: params[:logs])
      logs = Log.all.order("created_at DESC")
      Log.first.destroy if Log.count > 10
      render json: logs
    end
  end
end
