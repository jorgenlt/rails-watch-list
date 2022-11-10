class Movie < ApplicationRecord
  has_many :bookmarks

  validates :title, presence: true, uniqueness: true
  validates :overview, presence: true
end

# Movie
#       has a title and an overview (FAILED - 11)
#       title is unique (FAILED - 12)
#       title cannot be blank (FAILED - 13)
#       overview cannot be blank (FAILED - 14)
#       has many bookmarks (FAILED - 15)
#   should not be able to destroy self if has bookmarks children (FAILED - 16)
