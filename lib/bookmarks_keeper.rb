require 'bookmarks_keeper/version'

require 'phantomjs'
require 'sequel'
require 'yaml'

DB = Sequel.connect(YAML::load_file('config/database.yml'))

module BookmarksKeeper
  def self.root
    @root ||= Gem::Specification.find_by_name('bookmarks_keeper').gem_dir
  end

  SCRIPT = File.open(File.join(BookmarksKeeper.root, 'javascripts', 'save.js'), 'rb') { |f| f.read }.freeze

  [['http://example.com/', 'example.png'],
   ['http://getbootstrap.com/', 'bootstrap.png']].each do |url, path|
    full_path = File.join(BookmarksKeeper.root, 'data', path)

    output = ::Phantomjs.inline(SCRIPT, url, full_path)

    if (output =~ /Status: success/) != nil
      puts(url + ' => ' + 'SUCCEEDED')
    else
      puts(url + ' => ' + 'FAILED')
    end
  end
end
