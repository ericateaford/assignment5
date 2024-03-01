class Quote < ApplicationRecord
    validates :saying, presence: true, numericality: true 
    validates :said_by, presence: true, numericality: true 
    validates :year, presence: false, numericality: true 
    validates :note, presence: false, numericality: true 
end
