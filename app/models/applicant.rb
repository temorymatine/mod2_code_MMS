class Applicant < ApplicationRecord
    has_many :employers, through: :interviews
    has_many :interviews
    
end
