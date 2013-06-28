class Category < ActiveRecord::Base
  attr_accessible :body, :title

  has_many :images

  validates :title, presence: true

end
