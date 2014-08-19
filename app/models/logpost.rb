class Logpost < ActiveRecord::Base
  validates :user_mail, :content, :date, presence: true
  belongs_to :user
end
