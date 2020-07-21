class User < ApplicationRecord
  has_one :user_contact, class_name: UserContact.name, dependent: :destroy
  has_many :blogs, class_name: Blog.name, dependent: :destroy
  has_many :tours, class_name: Tour.name, dependent: :destroy
  has_many :reviews, class_name: Review.name, foreign_key: :user_id,
                                              dependent: :destroy
  has_many :reviews, class_name: Review.name, foreign_key: :repply_id,
                                              dependent: :destroy
end
