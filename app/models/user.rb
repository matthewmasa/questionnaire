# frozen_string_literal: true
# user投稿

class User < ApplicationRecord
  has_secure_password

  validates :name,  presence: true
  validates :email ,presence: true, uniqueness: true
end
