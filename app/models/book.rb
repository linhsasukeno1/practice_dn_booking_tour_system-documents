class Book < ApplicationRecord
  belongs_to :user_contact, class_name: UserContact.name
  belongs_to :tour, class_name: Tour.name
end
