class Book < ActiveRecord::Base
  belongs :author
  has_many :readings
  has_many :users, through: :readings
end
