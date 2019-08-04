class StudentsController < ApplicationController
    before_action :find_student, only:[:show, :edit, :update]

    def index
        @students = Student.all
    end

    def show
        #before_action
    end

    def new
        @student = Student.new
    end

    def create
        @student = Student.new(student_params)
        @student.save
        redirect_to student_path(@student)
    end

    def edit
        #before_action
    end

    def update
        #before_action
        
        if @student.update(student_params)
            redirect_to @student
        else
            render 'edit'
        end    
    end

    private

    def find_student
        @student = Student.find(params[:id])
    end

    def student_params
        params.require(:student).permit(:first_name, :last_name)
    end

end