class TestItemsController < ApplicationController

  def index
    if session[:id]
      render :index
    else
      render "../views/home"
    end
  end

end