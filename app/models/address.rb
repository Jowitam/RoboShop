class Address < ApplicationRecord
  belongs_to :order

  validates :first_name, :last_name, :zip_code, :city, :street, :email, presence: true
end
