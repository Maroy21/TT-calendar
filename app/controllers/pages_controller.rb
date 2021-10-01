class PagesController < ApplicationController
  
  def main
    @user = current_user
    if params[:month] == nil
      @date = Date.today
    else
      @date = Date.new(params[:year].to_i, ((params[:month].to_i - 1) % 12) +1, 1)
    end
    
  end 
end
