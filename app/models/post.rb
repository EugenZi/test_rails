class Post < ActiveRecord::Base
  attr_accessible :theme_id, :description, :keywords, :text, :title, :created_at, :updated_at
  belongs_to :user
  belongs_to :theme
  has_many :comments
end
