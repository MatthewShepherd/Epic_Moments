class Post < ActiveRecord::Base
  belongs_to :postable, polymorphic: true
  has_many :votes, as: :voteable
end
