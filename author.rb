class Author < ActiveRecord::Base
  has_many :books

  # validates :name, presence: true
  validates_presence_of :name
end
