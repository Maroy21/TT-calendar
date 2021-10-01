class PagesController < ApplicationController
  
  def main
    @user = current_user
    @date = Date.today
    
  end

  def show
    
    @date = Date.new(params[:year].to_i, ((params[:month].to_i - 1) % 12) +1, 1)
    
    
  end

  

end
