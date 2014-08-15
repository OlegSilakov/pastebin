class LogText < ActiveRecord::Base
	belongs_to :user
	validates :author_mail, :description, :time_created, presence: true
end
