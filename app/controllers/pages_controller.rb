class PagesController < ApplicationController
  
  before_action :authenticate_user!

  def main
    @user = current_user
    if params[:month] == nil
      @date = Date.today
    else
      @date = Date.new(params[:year].to_i, valid_month(params[:month]), 1) 
    end
    
  end 

  private
  def valid_month (month)
    return ((month.to_i - 1) % 12) + 1
  end 

end
