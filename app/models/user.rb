class User < ActiveRecord::Base

  validates_presence_of :user_name
  validates_uniqueness_of :user_name
  has_secure_password
end
