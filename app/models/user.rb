class User < ApplicationRecord
  has_many :answers
  has_many :questions

  validates :displayname, presence: true
  validates :email, presence: true
  validates :password, presence: true
  has_secure_password
end
