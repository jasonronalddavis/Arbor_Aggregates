class StoryTextSerializer 
  include FastJsonapi::ObjectSerializer
  attributes :id, :name, :description, :comments, :categories, :images


  has_many :user_products
  has_many :users, through: :user_products
  has_many :product_categories
  has_many :categories, through: :product_categories
  has_many :user_categories
  has_many :categories, through: :user_categories
  has_many :user_comments
  has_many :comments, through: :user_comments 
  has_many :product_comments
  has_many :comments, through: :product_comments 
  has_many :product_images
  has_many :images, through: :product_images 




end
