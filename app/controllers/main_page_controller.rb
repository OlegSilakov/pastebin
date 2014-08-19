class MainPageController < ApplicationController
  def index
  	@logposts = Logpost.page(params[:page]).per(5)
  end
end
