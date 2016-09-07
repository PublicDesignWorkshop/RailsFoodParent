class User < ActiveRecord::Base
  has_many :trees, through: :adoptions
  has_many :donations
  has_many :notes

  ROLES = [:admin, :manager, :tree_parent, :anon]
  enum role: ROLES

  TOKEN_DURATION = 6.months

  def is_admin?
    self.role === 'admin'
  end

  def is_manager?
    self.role === 'manager'
  end

  def is_privileged?
    self.is_manager? || self.is_admin?
  end

  def token_valid?
    Time.current < token_expires_at
  end

  def authentication_token
    AuthenticationToken.new(self)
  end

  def self.find_for_database_authentication(warden_conditions)
    conditions = warden_conditions.dup
    if login = conditions.delete(:login)
      where(conditions).where(["lower(username) = :value OR lower(email) = :value", { :value => login.downcase }]).first
    else
      where(conditions).first
    end
  end

  def generate_authentication_token
    token = SecureRandom.base64(24)
    hashed_token = AuthenticationToken.to_hashed_token(token)

    self.update_attributes!(hashed_authentication_token: hashed_token, token_expires_at: Time.current + TOKEN_DURATION)
    return token
  end

end
