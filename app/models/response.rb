class Response < ActiveRecord::Base
  belongs_to :user
  belongs_to :test_item
end
