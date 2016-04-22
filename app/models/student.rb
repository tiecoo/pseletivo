class Student < ActiveRecord::Base

   validates :name, :presence => true

   belongs_to :classrooms
   #belongs_to :courses, :through => :classrooms
end
