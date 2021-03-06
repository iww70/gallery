class CreateImages < ActiveRecord::Migration
  def change
    create_table    :images do |t|
      t.string      :title
      t.text        :description
      t.integer     :category_id
      t.attachment  :data

      t.timestamps
    end
  end
end
