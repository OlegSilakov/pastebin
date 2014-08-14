class CreateLogTexts < ActiveRecord::Migration
  def change
    create_table :log_texts do |t|
      t.string :author_mail
      t.text :description
      t.datetime :time_created

      t.timestamps
    end
  end
end
