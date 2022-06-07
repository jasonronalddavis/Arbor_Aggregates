class CategorySerializer 
    include FastJsonapi::ObjectSerializer
    attributes :id, :name, :users, :comments
  
  
    has_many :user_categories
    has_many :users, through: :user_categories


    has_many :product_categories
    has_many :products, through: :product_categories

    has_many :user_products
    has_many :products, through: :user_products
    has_many :users, through: :user_products

  
  end
  