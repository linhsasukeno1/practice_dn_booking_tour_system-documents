class Category < ApplicationRecord
  has_many :tours, class_name: Tour.name, dependent: :destroy
end
