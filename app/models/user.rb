class User < ActiveRecord::Base
  has_secure_password
  attr_accessor :new_password
  validates :email, presence: true, uniqueness: true,
            format: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i

end
