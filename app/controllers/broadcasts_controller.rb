class BroadcastsController < ApplicationController
  def new
  end

  def create
    @broadcast = Broadcast.new(broadcast_params)

    @broadcast.save
    redirect_to @broadcast
  end

  def show
    @broadcast = Broadcast.find(params[:id])
  end

  def index
    @broadcasts = Broadcast.all
  end

  private
    def broadcast_params
      params.require(:broadcast).permit(:broadcast_name, :description)
    end
end
