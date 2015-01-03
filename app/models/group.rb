class Group < ActiveRecord::Base
  belongs_to :subelement
  has_many :questions
end
