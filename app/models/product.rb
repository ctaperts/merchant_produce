class Product < ApplicationRecord
  belongs_to :brand
  belongs_to :category

  has_attached_file :avatar,
  styles: {
  medium: "300x300#",
  thumb: "100x100" },
  default_url: "missing_:style.jpg"



  validates_attachment_size :avatar, less_than: 3.megabytes, unless: Proc.new { |m| m[:avatar_file_name].blank?}
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/

end
