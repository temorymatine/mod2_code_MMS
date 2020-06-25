class CreateInterviews < ActiveRecord::Migration[6.0]
  def change
    create_table :interviews do |t|

      t.integer :applicant_id
      t.integer :employer_id
      t.datetime :date_of_interview

    end
  end
end
