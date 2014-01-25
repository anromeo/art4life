class Image < ActiveRecord::Base
  belongs_to :post
  has_attached_file :url, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
end
