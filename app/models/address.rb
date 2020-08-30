class Address < ApplicationRecord
  belongs_to :address_category
  belongs_to :severity

end
