class MainPageController < ApplicationController
  def index
  	@logposts = Logpost.all.page(params[:page]).per(5)
  end
end
