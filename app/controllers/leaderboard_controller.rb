class LeaderboardController < ApplicationController
  def index
    @users = User.all.order('percent DESC')

  end

  def show
    @user = User.find(params[:id])
  end
end