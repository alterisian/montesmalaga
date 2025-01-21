class Summit < ApplicationRecord
  belongs_to :mountain

  validates_presence_of :insta
  validates_presence_of :mountain_id
end
