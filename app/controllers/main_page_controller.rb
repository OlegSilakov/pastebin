class MainPageController < ApplicationController
  def index
  	@logposts = Logpost.page(params[:page]).per(Settings.pagination.main_page.index)
  end
end
