class Responses < ActiveRecord::Base
  belongs_to :user
  belongs_to :testItem
end
