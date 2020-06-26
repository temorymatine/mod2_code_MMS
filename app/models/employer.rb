class Employer < ApplicationRecord
    has_many :interviews
    has_many :applicants, through: :interviews

    def display_name
        "#{self.l_name}, #{self.f_name}"
    end
    
end
