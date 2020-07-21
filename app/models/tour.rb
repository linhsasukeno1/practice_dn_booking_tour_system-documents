class Tour < ApplicationRecord
  belongs_to :user, class_name: User.name
  belongs_to :category, class_name: Category.name
  has_many :books, class_name: Book.name, dependent: :destroy
  has_many :tags, as: :tag_type, class_name: Tag.name, dependent: :destroy
  belongs_to :tour_details, class_name: TourDetail.name, dependent: :destroy
  has_many :reviews, as: :review_type, class_name: Review.name, dependent: :destroy
  has_many :images, as: :image_type, class_name: Image.name, dependent: :destroy
end
