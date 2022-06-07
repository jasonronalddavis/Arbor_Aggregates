class ImageSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :name, :description, :comments, :categories, :products, :url

  has_many :user_images
  has_many :users, through: :user_images
  has_many :image_categories
  has_many :categories, through: :image_categories
  has_many :product_images
  has_many :products, through: :product_images 
  has_many :image_comments
  has_many :comments, through: :image_comments 

end
