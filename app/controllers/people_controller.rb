class PeopleController < ApplicationController
  before_action :authenticate_user!
  
  def profile
  	@current_user_logposts = Logpost.where(user_mail: current_user.email).page(params[:page]).per(Settings.pagination.people.profile)

  end
end
