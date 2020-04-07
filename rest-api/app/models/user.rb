class User < ApplicationRecord
  belongs_to :role
  accepts_nested_attributes_for :role, :allow_destroy => false
  has_secure_password
end
