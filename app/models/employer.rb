class Employer < ApplicationRecord
    has_many :applicants, through: :interviews
    has_many :interviews
end
