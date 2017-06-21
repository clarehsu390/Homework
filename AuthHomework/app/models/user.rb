class User < ApplicationRecord
  attr_reader :password
  validates :username, :session_token, presence: true
  validates :password_digest, presence: true
    {message: "Password can't be blank."}
  validates :password, length: {minimum: 6, allow_nil: true}

  before_validation :ensure_session_token

  def self.find_by_credentials(username, password)
    user = User.find_by_username(username)
    return nil if user.nil?
    user.is_password?(password) ? user : nil
  end

  def self.generate_session_token
    SecureRandom::urlsafe_base64(16)
  end

  def reset_session_token!
    self.sesion_token = User.generate_session_token
    self.save!
    self.sesion_token
  end

  def ensure_session_token
    self.session_token ||= User.generate_session_token
  end

  def password=(password)
    @password = password
    self.password_digest = BCrypt::Password.create(password)
  end
end