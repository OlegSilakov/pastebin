class AddIndexToTable < ActiveRecord::Migration
  def change
    add_index :logposts, :user_mail
  end
end
