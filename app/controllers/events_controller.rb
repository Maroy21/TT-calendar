class EventsController < ApplicationController
  def index
    @events = current_user.events.all
  end

  def show
    @event = current_user.events.find(params[:id])
  end

  def new
    @event = current_user.events.new
  end

  def create
    @user = User.find(current_user.id)            #why it works only like that?
    @event = @user.events.create(event_params)
    if @event.save
      redirect_to @event
    else  
      render :new, status: :unprocessable_entity
    end
  end
  private
  def event_params 
    params.require(:event).permit(:date, :body)
  end
end
