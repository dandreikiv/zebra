class Video < ActiveRecord::Base
  attr_accessible :description, :rating, :tag, :url
  belongs_to :category
end
