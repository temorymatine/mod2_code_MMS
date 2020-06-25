class CreateEmployers < ActiveRecord::Migration[6.0]
  def change
    create_table :employers do |t|

      t.string :f_name
      t.string :l_name
      t.string :company
      t.string :address
    
    end
  end
end
