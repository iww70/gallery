class Picture < ActiveRecord::Base
  attr_accessible :title, :description
  
  # валидация полей - не должны быть пустыми 
  # validates :title, :description, presence: true
  
  after_destroy {}
  after_create  {}
  after_save    {}
  after_update  {}
  
end
