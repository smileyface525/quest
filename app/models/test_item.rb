class TestItem < ActiveRecord::Base
  belongs_to :author, class_name: "User", foreign_key: "user_id"
  belongs_to :subject
  has_many :responses
  has_one :multi_choice
end
