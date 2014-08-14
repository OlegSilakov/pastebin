class CreateLogposts < ActiveRecord::Migration
  def change
    create_table :logposts do |t|
      t.string :user_mail
      t.text :content
      t.datetime :date

      t.timestamps
    end
  end
end
