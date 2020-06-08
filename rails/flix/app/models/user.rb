class User < ApplicationRecord
  validates :name, presence: true
  validates :email, format: { with: /\S+@\S+/ }, uniqueness: { case_sensitive: false}
  validates :password, length: { minimum: 6, allow_blank: true }
  has_secure_password

  def gravatar_id
    Digest::MD5::hexdigest(email.downcase)
  end
end
