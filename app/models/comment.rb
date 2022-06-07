class Comment < ApplicationRecord
    has_many :products
    has_many :categories, through: :products

    has_many :user_categories
    has_many :categories, through: :user_categories

    has_many :user_comments
    has_many :users, through: :user_comments

    has_many :product_comments
    has_many :products, through: :product_comments 

    has_many :image_comments
    has_many :images, through: :image_comments
end
