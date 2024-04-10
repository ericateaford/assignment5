class Choice < ApplicationRecord
  belongs_to :question
  validates :name, :age, presence:true
  
end
