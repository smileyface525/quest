class SessionsController < ApplicationController

  def new
  end

  def create
    @user = User.find_by_email(params[:user][:email])
    if @user.present? && @user.password == params[:user][:password]
      session[:user_id] = @user.id
      redirect_to test_items_path
    else
      render :new
    end

  end

  def destroy
    session.clear
    redirect_to test_items_path
  end

end