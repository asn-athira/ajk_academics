class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
    	t.string :firstname
    	t.string :lastname
  	   	t.integer :age
    	t.string :gender
        t.text   :address    	
        t.integer :phone    	
        t.string :email
        t.integer :course_id
       	t.timestamps
    end
  end
end
