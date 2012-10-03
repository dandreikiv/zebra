class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.text :url
      t.text :description
      t.integer :rating
      t.string :tag

      t.timestamps
      
      t.belongs_to :category
    end
  end
end
