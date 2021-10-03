class Category < ApplicationRecord
    has_many :products

    validates :name, presence: true

    def to_param
        "#{id}-#{name}".parameterize
    end

end
