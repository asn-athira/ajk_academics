class Student < ApplicationRecord
  validates :firstname, presence: true, length: {maximum: 32}, allow_blank: false
  validates :lastname, presence: true, length: {maximum: 32}, allow_blank: false
  validates :gender, presence: true
  validates :age ,length: {maximum: 32}, allow_blank: true
  validates :address, length: {maximum: 32}, allow_blank: true
  validates :phone, length: {maximum: 82}, allow_blank: true
  validates :email, presence: true
  belongs_to:course
end
