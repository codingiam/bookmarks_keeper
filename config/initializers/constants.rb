# frozen_string_literal: true

module BookmarksKeeper # :nodoc:
  HOST ||= ENV.fetch('HOST')
  HTTPS_ENABLED ||= ENV.fetch('ENABLE_HTTPS') == 'yes'
end
