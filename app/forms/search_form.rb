class SearchForm < Reform::Form
  property :q

  def initialize
    super(OpenStruct.new)
  end

  def self.property(name, options={})
    super(name, options.merge(virtual: true))
  end
end
