class Employer < ApplicationRecord
    has_many :applicants, through: :interviews
    has_many :interviews

    def display_name
        "#{self.l_name}, #{self.f_name}"
    end
    
end
