class StudentsController < ApplicationController
    def index
      students = Student.all
      render json: students
    end
  
    def grades
      students_grades = Student.all.order(grade: :desc)
      render json: students_grades
    end
  
    def highest_grade
      highest_grade = Student.all.order(grade: :desc).first
      render json: highest_grade
    end
  end