class User < ActiveRecord::Base
  attr_accessible :name, :email, :password, :password_confirmation
  has_secure_password
  
  before_save { |user| user.email = user.email.downcase }
  
  VALID_EMAIL_REGEX = /\A[\w+\-_.]+@[a-z\d\-.]+\.\w+\z/i
  
  validates :name, presence: true, length: { maximum: 50 };
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false };
  validates :password, length: { minimum: 6 };
  validates :password_confirmation, presence: true;
end
