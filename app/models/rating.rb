class Rating < ActiveRecord::Base
  belongs_to :song
  belongs_to :user
  validates :star, presence: true
  validates :star, inclusion: { in: [1,2,3,4,5], message: 'Star should be 1-5.' }
end
