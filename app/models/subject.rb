class Subject < ActiveRecord::Base
  has_many :test_items
  has_many :users, through: :test_items
end

