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

  def update
    @student = Student.find(params[:id])
    @student.first_name = params[:first_name] || @student.first_name
    @student.last_name = params[:last_name] || @student.last_name
    @student.email = params[:email] || @student.email
    @student.phone_number = params[:phone_number] || @student.phone_number
    @student.bio = params[:bio] || @student.bio
    @student.linked_in = params[:linked_in] || @student.linked_in
    @student.twitter = params[:twitter] || @student.twitter
    @student.website = params[:website] || @student.website
    @student.resume = params[:resume] || @student.resume
    @student.github = params[:github] || @student.github
    @student.photo = params[:photo] || @student.photo

    if @student.save
      render 'show.json.jbuilder'
    else 
      render json: {errors: @student.errors.full_messages}, status: :unprocessable_entity
    end
  end

end
