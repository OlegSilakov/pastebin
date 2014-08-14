class LogText < ActiveRecord::Base
	validates :author_mail, :description, :time_created
end
