class Question < ApplicationRecord
  belongs_to :survey
  has_many :choices 
  validates :title, :input, presence:true 

  accepts_nested_attributes_for :choices, allow_destroy: true 
end
