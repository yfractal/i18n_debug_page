class ApplicationController < ActionController::Base
  include I18nDebugPage

  protect_from_forgery with: :exception
end
