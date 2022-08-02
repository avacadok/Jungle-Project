class User < ApplicationRecord
  has_secure_password
  before_validation :clean_email

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true
  validates :password_confirmation, presence: true

  def clean_email 
    if self.email != nil
      self.email = email.downcase
    end
  end
end