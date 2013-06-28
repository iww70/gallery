class Image < ActiveRecord::Base
  attr_accessible :description, :title, :category_id, :data

  belongs_to :category

#  has_attached_file :data, :styles => {
#    :medium => "300x300>",
#    :thumb => "60x60>"
#  }, :default_url => "/images/:style/missing.png"

  has_attached_file :data, :styles => {
                      :small => "150x150>",
                      :medium => "300x300",
                      :thumb => "60x60>"
                      },
                    :url  => "/assets/images/:id/:style/:basename.:extension",
                    :path => ":rails_root/public/assets/images/:id/:style/:basename.:extension"

  validates_attachment_presence :data
  validates_attachment_size :data, :less_than => 5.megabytes
  validates_attachment_content_type :data, :content_type => ['image/jpeg', 'image/png']


  def data_present?
    self.data.file?
  end

  def id_find?
    self.category_id.exists?
  end

  validates :title, presence: true

end
