class Image < ActiveRecord::Base
  attr_accessible :description, :image_url, :title, :category_id, :data
  
  belongs_to :category
  
  has_attached_file :data, :styles => {
    :medium => "300x300>",
    :thumb => "100x100>"
  }, :default_url => "/images/:style/missing.png"
  
end
