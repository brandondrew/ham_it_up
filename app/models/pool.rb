class Pool < ActiveRecord::Base
  has_many :questions
  has_many :subelements
end
