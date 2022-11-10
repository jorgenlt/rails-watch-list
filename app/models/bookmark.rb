class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list

  validates :comment, length: { minimum: 6 }
  validates :movie_id, uniqueness: { scope: :list_id }
end

# Bookmark
#   has a comment
#   comment cannot be shorter than 6 characters
#   belongs to a movie
#   belongs to an list
#   movie cannot be blank
#   list cannot be blank
#   is unique for a given movie/list couple
