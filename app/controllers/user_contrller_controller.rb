class UserContrllerController < ApplicationController
	load_and_authorize_resource

	def index
	  authorize! :index, Project
    @projects = Project.accessible_by(current_ability)	
	end
end
