class TestItems < ActiveRecord::Base
  belongs_to :author, class_name: "User", foreign_key: "user_id"
  belongs_to :subject
  has_many :responses
  has_one :multiChoice
end
