class UserStoryTextSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :name, :products, :comments, :categories, :images


  belongs_to :user, optional: true
  belongs_to :category, optional: true
  belongs_to :products, optional: true
  belongs_to :comment, optional: true
  belongs_to :image, optional: true
end
