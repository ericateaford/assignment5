class Quote < ApplicationRecord
    validates :saying, presence: true, numericality: false
    validates :said_by, presence: true, numericality: false 
    validates :year, presence: false, numericality: true 
    validates :note, presence: false, numericality: false 
end
