class ClassroomsController < ApplicationController

   def index
      @classroom = Classroom.all
   end

   def new
      @classroom = Classroom.new
   end

   def create
end

   def course_params
      params.require(:classroom).permit(:students_id, :courses_id)
    end
end