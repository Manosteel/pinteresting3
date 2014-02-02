class Pin < ActiveRecord::Base
  #Paperclip.options[:command_path] = 'C:/Program Files/ImageMagick-6.8.5-Q16'
  Paperclip.options[:command_path] = 'C:/ImageMagick-6.8.5-Q16'
  
  belongs_to :user

  has_attached_file :image, :styles => { :medium => "300x300", :thumb => "100x100" }

  validates :description, presence: true
  validates :image, presence: true
end
 