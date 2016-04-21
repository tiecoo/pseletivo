class ClassroomsController < ApplicationController

   def index
      @classroom = Classroom.all
   end

   def new
      @classroom = Classroom.new
      @all_courses = Course.all
      @all_students = Student.all
   end

   def create
    @classroom = Classroom.new(classroom_params)

    respond_to do |format|
      if @classroom.save
         params[:students_id].split(',').each do |id|
              @classroom.students_id << Student.find(id)
           end
        format.html { redirect_to @classroom, notice: 'Course was successfully created.' }
        format.json { render :show, status: :created, location: @classroom }
      else
        format.html { render :new }
        format.json { render json: @classroom.errors, status: :unprocessable_entity }
      end
    end
  end

   def classroom_params
      params.permit( :courses_id,:students_id )
    end
end