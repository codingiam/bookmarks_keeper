# frozen_string_literal: true

# :nodoc:
class ApplicationController < ActionController::Base
  protect_from_forgery

  before_action :force_https

  private

  def force_https
    return unless BookmarksKeeper::HTTPS_ENABLED && !request.ssl? && force_https?

    redirect_to protocol: 'https://', status: :moved_permanently
  end

  def force_https?
    true
  end
end
