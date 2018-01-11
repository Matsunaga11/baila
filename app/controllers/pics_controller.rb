class PicsController < ApplicationController

def new
    @event = Event.find(params[:event_id])
    @pic = Pic.new
  end

  def create
  @pic = Pic.create(set_pic)
  redirect_to root_path
  end

 private

  def set_pic
    params.require(:pic).permit(:event_id).merge(subimage: params[:file], user_id: current_user.id)
  end

end
