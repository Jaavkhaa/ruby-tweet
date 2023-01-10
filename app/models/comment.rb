class Comment < ApplicationRecord
  include Likeable
  
  belongs_to :tweet
  belongs_to :user
end
