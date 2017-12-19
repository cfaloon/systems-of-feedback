class Comment < ApplicationRecord
  # relations
  belongs_to :post
  belongs_to :user
end
