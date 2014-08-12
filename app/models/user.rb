class User < ActiveRecord::Base
  attr_accessible :name , :email

  # User::Roles
  # The available roles
  Roles = [ :admin , :default ]

  def is?( requested_role )
    self.role == requested_role.to_s
  end
end
