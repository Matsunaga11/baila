class ToppagesController < ApplicationController
  def index
      @events = Event.all.page(params[:page]).per(6)
       respond_to do |format|
       format.html
       format.json
    end
  end
end
