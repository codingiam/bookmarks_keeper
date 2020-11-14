# frozen_string_literal: true

class SearchForm < Reform::Form # :nodoc:
  property :q

  def initialize
    super(OpenStruct.new)
  end

  def self.property(name, options = {})
    super(name, options.merge(virtual: true))
  end
end
