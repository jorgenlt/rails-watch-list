class List < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks
  validates :name, presence: true, uniqueness: true
end

# List
#       has a name
#       name cannot be blank
#       name is unique
#       has many bookmarks (FAILED - 8)
#       has many movies (FAILED - 9)
#       should destroy child saved movies when destroying self (FAILED -
