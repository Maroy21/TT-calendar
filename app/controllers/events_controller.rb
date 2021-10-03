class EventsController < ApplicationController
  def index
    @events = current_user.events.all
  end

  def showAll
    @events = current_user.events.all
    @date = params[:date]
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

  def edit 
    @event = current_user.events.find(params[:id])
  end

  def update
    @event = current_user.events.find(params[:id])

    if @event.update(event_params)
      redirect_to @event
    else  
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @event = current_user.events.find(params[:id])

    @event.destroy
    redirect_to root_path
  end


  private
  def event_params 
    params.require(:event).permit(:date, :body)
  end
end
