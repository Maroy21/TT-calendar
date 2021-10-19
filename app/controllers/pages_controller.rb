# frozen_string_literal: true

class PagesController < ApplicationController
  before_action :authenticate_user!

  def main
    @user = current_user
    @date = if params[:month].nil?
              Date.today
            else
              Date.new(params[:year].to_i, valid_month(params[:month]), 1)
            end
  end

  private

  def valid_month(month)
    ((month.to_i - 1) % 12) + 1
  end
end
