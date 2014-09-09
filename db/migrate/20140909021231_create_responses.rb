class CreateResponses < ActiveRecord::Migration
  def change
    create_table :responses do |t|
      t.belongs_to :testItem
      t.belongs_to :user
      t.string :user_answer
      t.timestamps
    end
  end
end
