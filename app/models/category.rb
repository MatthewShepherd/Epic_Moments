class Category < ActiveRecord::Base
  has_many :posts, as: :postable
end
