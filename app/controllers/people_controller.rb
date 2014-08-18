class PeopleController < ApplicationController
  before_action :authenticate_user!
  def profile
  	@logpost = Logpost.where(user_mail: current_user.email)
  end
end
