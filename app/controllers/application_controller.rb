class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :null_session
  before_filter :authenticate

  def current_user
    @user
  end

  private

  def authenticate
    # authenticate_user_from_token || render_unauthorized
    true
  end

  def authenticate_user_from_token
    if auth_headers = request.headers['Authorization']
      auth = JSON.parse(auth_headers)
      identifier = auth['identifier']
      @user = identifier && User.where("email = ? or username = ?", identifier, identifier).first
      @user && @user.authentication_token.matches_and_valid?(auth['authentication_token'])
    end
  end

  def render_unauthorized
    self.headers['WWW-Authenticate'] = 'Token realm="Application"'
    render json: 'You must provide a valid token', status: 401
  end
end

# Must be sent via HTTPS.
