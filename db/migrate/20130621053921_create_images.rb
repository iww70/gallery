class CreateImages < ActiveRecord::Migration
  def change
    create_table    :images do |t|
      t.string      :title
      t.text        :description
      t.string      :image_url
      t.integer     :category_id
      t.attachment  :data
      
      t.timestamps
    end
  end
end
