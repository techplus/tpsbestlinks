class Post < ActiveRecord::Base
  attr_accessible :code_sample, :description, :source_link, :title, :technology_id, :user_id
  belongs_to :technology
  belongs_to :user
  validates :code_sample, :description, :source_link, :title, :presence => true


  
end
