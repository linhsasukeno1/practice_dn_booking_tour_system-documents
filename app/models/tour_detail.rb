class TourDetail < ApplicationRecord
  belongs_to :tour, class_name: :tour
  belongs_to :user, class_name: :user
end
