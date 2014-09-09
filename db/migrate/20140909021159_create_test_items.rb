class CreateTestItems < ActiveRecord::Migration
  def change
    create_table :test_items do |t|
      t.belongs_to :user
      t.belongs_to :subject
      t.string :type
      t.text :question
      t.string :answer
      t.timestamps
    end
  end
end
