class PeopleController < ApplicationController
  before_action :authenticate_user!
  
  def profile
  	@logposts = Logpost.where(user_mail: current_user.email).page(params[:page]).per(Settings.pagination.people.profile)

  end
end
