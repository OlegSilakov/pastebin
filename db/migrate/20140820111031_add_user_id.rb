class AddUserId < ActiveRecord::Migration
  def change
    add_reference :logposts, :user, index: true
  end
end
