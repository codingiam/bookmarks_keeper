# frozen_string_literal: true

require "bookmarks_keeper/cfg/version"

module BookmarksKeeper
  module Cfg # :nodoc:
    # imediate constants
    DB_POOL = ENV.fetch("DB_POOL")

    HOST = ENV.fetch("HOST")
    HTTPS_ENABLED = ENV["ENABLE_HTTPS"] == "yes"

    # deferred constants
    class << self
    end

    # deferred constants evaluator
    def self.const_missing(constant)
      method = constant.downcase
      return super unless respond_to?(method)

      const_set(constant, send(method))
    end
  end
end
