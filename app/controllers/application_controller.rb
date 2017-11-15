class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  before_action :authenticate_user! #가장 시작에 앞서서
  protect_from_forgery with: :exception
end
