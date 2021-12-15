class User < ApplicationRecord
  PASSWORD_FORMAT = /\A
  (?=.{6,15})          # Must contain 6 or more characters
  (?=.*\d)           # Must contain a digit
  (?=.*[a-z])        # Must contain a lower case character
  (?=.*[A-Z])        # Must contain an upper case character
  (?=.*[[:^alnum:]]) # Must contain a symbol
/x

  has_secure_password

  validates :email, :username, presence: true, uniqueness: true
  validates :password, presence: true

  validates :email, format: { with: /\b[A-Z0-9._%a-z\-]+@(?:[A-Z0-9a-z\-]+\.)+[A-Za-z]{2,4}\z/}
  validates :username, format: { with: /\A([a-zA-Z]+){2,4}\z/}
  validates :password, format: { with: PASSWORD_FORMAT }
end
