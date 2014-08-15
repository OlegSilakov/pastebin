class MainPageController < ApplicationController
  def index
  	@logposts = Logpost.all
  end
end
