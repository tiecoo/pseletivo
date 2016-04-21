class Student < ActiveRecord::Base

   validates :name, :presence => true

   has_many :classrooms
   has_many :courses, :through => :classrooms
end
