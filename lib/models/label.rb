class Label < Sequel::Model
  many_to_many :bookmarks
end
