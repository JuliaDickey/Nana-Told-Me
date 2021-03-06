class Story < ActiveRecord::Base


  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100#" }, :default_url => '1.jpg'
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
  validates_presence_of :title, :date

end
