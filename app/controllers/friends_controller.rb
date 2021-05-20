class FriendsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @friends = Friend.all
  end

  # GET /pets/2
  def show
    @friend = Friend.find(params[:id])
  end

  def new
    @friend = Friend.new
  end

  def create
    @friend = Friend.new(friend_params)
    @friend.user = current_user
    if @friend.save!

      redirect_to friend_path(@friend)
    else
      render :new
    end
  end

  def edit
    @friend = Friend.find(params[:id])
  end

  # PATCH /pets/1
  def update
    @friend = Friend.find(params[:id])
    if @friend.update(friend_params)
      redirect_to friend_path(@friend)
    else
      render :edit
    end
  end

  # DELETE /pets/1
  def destroy
    @friend = Friend.find(params[:id])
    @friend.destroy
    redirect_to friends_path
  end

  private

  def friend_params
    params.require(:friend).permit(:first_name, :last_name, :photo, :age, :gender, :description, :price, :address)
  end
end
