class Person < ApplicationRecord
  has_many :contacts, foreign_key: 'owner_id', dependent: :destroy
  has_many :phones
  has_many :addresses
end
