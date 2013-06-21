class Image < ActiveRecord::Base
  attr_accessible :description, :image_url, :title, :category_id
  
  belongs_to :category
  
end
