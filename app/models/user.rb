class User < ActiveRecord::Base
  has_many :test_items
end
