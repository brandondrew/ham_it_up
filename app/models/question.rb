class Question < ActiveRecord::Base
  belongs_to :pool
  belongs_to :group
end
