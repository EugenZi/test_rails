class Comment < ActiveRecord::Base
  attr_accessible :data, :post_id, :title, :user_id
  belongs_to :user
  belongs_to :post
end
