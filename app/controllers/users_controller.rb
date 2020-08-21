class UsersController < ApplicationController

  def new
    @user = current_user
  end

  def shows
  end

  def index
    @books = Book.all
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(@user.id)
  end

  private
  def user_params
  	params.require(:user).permit(:name, :image, :introduction)
  end
end
