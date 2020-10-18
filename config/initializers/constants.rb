# frozen_string_literal: true

# :nodoc:
module BookmarksKeeper
  HOST ||= ENV.fetch('HOST')
  HTTPS_ENABLED ||= ENV.fetch('ENABLE_HTTPS') == 'yes'
end
