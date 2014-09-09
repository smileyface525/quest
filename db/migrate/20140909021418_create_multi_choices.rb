class CreateMultiChoices < ActiveRecord::Migration
  def change
    create_table :multi_choices do |t|
      t.belongs_to :testItem
      t.string :wrong_choice_one
      t.string :wrong_choice_two
      t.string :wrong_choice_three
      t.timestamps
    end
  end
end
