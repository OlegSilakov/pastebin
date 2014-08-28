class DeleteLogTextAndAddPreference < ActiveRecord::Migration
  def change
    drop_table :log_texts

    add_column :logposts, :user, :references
  end
end
