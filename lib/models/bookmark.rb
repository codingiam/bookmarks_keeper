class Bookmark < Sequel::Model
  many_to_many :labels
end
