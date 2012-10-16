class Video < ActiveRecord::Base
  attr_accessible :author, :description, :duration, :rate, :title, :upload_date, :url
  belongs_to :category
end
