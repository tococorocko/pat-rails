class AddressCategory < ApplicationRecord
  belongs_to :language
  has_many :addresses
end
