class Image < ActiveRecord::Base
  attr_accessible :description, :title, :category_id, :data

  belongs_to :category

  has_attached_file :data, :styles => {
    :medium => "300x300>",
    :thumb => "60x60>"
  }, :default_url => "/images/:style/missing.png"

  def data_present?
    self.data.file?
  end

  def id_find?
    self.category_id.exists?
  end
end
