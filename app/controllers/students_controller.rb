class StudentsController < ApplicationController
    layout 'student'
	def index
      @students=Student.all

	end
    def new
    	@courses=Course.all
	 	@student=Student.new
	 end
	 def show
		 @student=Student.find(params[:id])
	 end
	 def edit
	 	 @courses=Course.all
		 @student=Student.find(params[:id])
	 end
    def create
	 	@student=Student.new(student_params)
    	 if @student.save
	 		redirect_to @student
	 	else
	 		render 'new'
	 	end
	 end
	def update
    	 @student=Student.find(params[:id])
		 @student.update(student_params)
	     if @student.save
			redirect_to @student
		else
			render 'new'
		end
	   
	 end
	 def destroy
		 @student=Student.find(params[:id])
		 @student.destroy
		 redirect_to @student

	 end

	 private

	 def student_params
        params.require(:student).permit(:firstname, :lastname, :age, :gender, :address, :phone, :email, :course_id)
	 end
    private
    
end