class User < ActiveRecord::Base
  has_many :test_items
  has_many :responses
  has_many :subjects, through: :test_items
end
