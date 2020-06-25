class CreateApplicants < ActiveRecord::Migration[6.0]
  def change
    create_table :applicants do |t|

      t.string :f_name
      t.string :l_name
      t.string :email

    end
  end
end
