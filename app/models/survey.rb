class Survey < ApplicationRecord
    validates :title, presence: true, numericality: false
    validates :description, presence: true, numericality: false 

    has_many :questions
end 
