class Image < ActiveRecord::Base
  belongs_to :post
  has_attached_file :pic, :styles => { :medium => "300x300>" }

end
