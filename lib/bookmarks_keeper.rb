require 'bookmarks_keeper/version'

require 'phantomjs'
require 'sequel'
require 'yaml'
require 'logger'
require 'nokogiri'

DB = Sequel.connect(YAML::load_file('config/database.yml')) # , loggers: [Logger.new($stdout)]

require 'models/bookmark'
require 'models/label'

module BookmarksKeeper
  def self.root
    @root ||= Gem::Specification.find_by_name('bookmarks_keeper').gem_dir
  end

  SCRIPT = File.open(File.join(root, 'javascripts', 'save.js'), 'rb') { |f| f.read }.freeze

  def self.screenshot(url, path)
    output = ::Phantomjs.inline(SCRIPT, url, path)

    if (output =~ /Status: success/) != nil
      puts(url + ' => ' + 'SUCCEEDED')
      true
    else
      puts(url + ' => ' + 'FAILED')
      false
    end
  end

  def self.import_bookmarks(path)
    xml = nil

    File.open(path, 'rb') do |f|
      xml = Nokogiri::XML(f)
    end

    i = 0
    xml.xpath('//bookmarks//bookmark').each do |bookmark|
      title = bookmark.xpath('title').text
      url = bookmark.xpath('url').text
      timestamp = Time.at(bookmark.xpath('timestamp').text.to_f / 1_000_000)
      labels = bookmark.xpath('labels//label').children.map(&:text)
      DB[:bookmarks].insert(title: title, url: url, timestamp: timestamp)
      print '.'
      if (i = i + 1) > 10
        break
      end
    end
    puts
  end

  xml_bookmarks_path = File.join(root, 'data', 'GoogleBookmarks.xml')

  DB[:bookmarks].truncate

  import_bookmarks(xml_bookmarks_path)

  # [['http://example.com/', 'example.png'],
  #  ['http://getbootstrap.com/', 'bootstrap.png']].each do |url, path|
  #   full_path = File.join(root, 'data', path)
  #   screenshot(url, full_path)
  # end
end
