class User < ActiveRecord::Base
  has_secure_password

  has_many :user_posts, dependent: :nullify, source: :user

  has_many :favourites, dependent: :destroy
  has_many :posts, through: :favourites

  attr_accessor :new_password
  validates :email, presence: true, uniqueness: true,
            format: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
end
