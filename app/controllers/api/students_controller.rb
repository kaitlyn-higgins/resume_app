class Api::StudentsController < ApplicationController

  def index
    @students = Student.all
    render 'index.json.jbuilder'
  end

  def show
    @student = Student.find(params[:id])
    render 'show.json.jbuilder'
  end

  def create
    @student = Student.new(
    first_name: params[:first_name],
    last_name: params[:last_name],
    email: params[:email],
    phone_number: params[:phone_number],
    bio: params[:bio],
    linked_in: params[:linked_in],
    twitter: params[:twitter],
    website: params[:website],
    resume: params[:resume],
    github: params[:github],
    photo: params[:photo]
    )

    if @student.save
      render 'show.json.jbuilder'
    else 
      render json: {errors: @student.errors.full_messages}, status: :unprocessable_entity
    end
  end

end
