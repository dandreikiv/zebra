class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :url
      t.text :description
      t.text :title
      t.integer :rate
      t.decimal :duration
      t.text :author
      t.timestamp :upload_date

      t.timestamps
    end
  end
end
