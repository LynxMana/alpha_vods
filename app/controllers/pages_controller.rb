class PagesController < ApplicationController
  def home
    redirect_to articles_path if logged_in?
  end

  def about
  end

  def edit
  end

  def show
  end

  def index
  end

  def new
  end


end
