class Category < ApplicationRecord

    has_many :user_categories
    has_many :users, through: :user_categories

    has_many :product_categories
    has_many :products, through: :product_categories

    has_many :image_categories
    has_many :images, through: :image_categories

end
