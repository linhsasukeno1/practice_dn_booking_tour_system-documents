class UserContact < ApplicationRecord
  belongs_to :user
  has_many :books, class_name: Book.name, dependent: :destroy
end
