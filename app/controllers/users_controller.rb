class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to test_items_path
    else
      render :new
    end

  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :first_name, :last_name, :phone )
  end

end