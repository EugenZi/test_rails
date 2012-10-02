class User < ActiveRecord::Base
  attr_accessible :about_me, :active, :birthday, :email, :login, :password
  has_many :posts
  has_many :comments
end
