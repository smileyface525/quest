class TestItemsController < ApplicationController

  def index
    if logged_in?
      render :index
    else
      render "../views/home"
    end
  end

end