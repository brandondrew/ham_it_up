class Subelement < ActiveRecord::Base
  belongs_to :pool
  has_many :groups
end
