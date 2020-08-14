class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|
   	  	t.string :name
    	t.string :code
  	   	t.text :description
    	t.integer :number_sem
    	t.string :status
    	t.timestamps
  
    end
  end
end
