class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @friends = Friend.where(user: @user)
  end
end
