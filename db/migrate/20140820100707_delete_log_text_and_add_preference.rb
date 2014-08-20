class DeleteLogTextAndAddPreference < ActiveRecord::Migration
  def change
    drop_table :log_texts
  end
end
