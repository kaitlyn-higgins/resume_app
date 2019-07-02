class Api::EducationsController < ApplicationController
  before_action :authenticate_user, only: [:create, :update, :destroy]

  def index
    @educations = Education.all
    render 'index.json.jbuilder'
  end

  def show
    @education = Education.find(params[:id])
    render 'show.json.jbuilder'
  end

  def create
    @education = Education.new(
      start_date: params[:start_date],
      end_date: params[:end_date],
      degree: params[:degree],
      university: params[:university],
      details: params[:details],
      student_id: params[:student_id]
      )

    if @education.save
      render 'show.json.jbuilder'
    else
      render json:{errors: @education.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def update
    @education = Education.find(params[:id])

    @education.start_date = params[:start_date]
    @education.end_date = params[:end_date]
    @education.degree = params[:degree]
    @education.university = params[:university]
    @education.details = params[:details]

    if @education.save
      render 'show.json.jbuilder'
    else
      render json:{errors: @education.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    @education = Education.find(params[:id])
    @education.destroy
    render json: {message: "Eductation deleted"}
  end
end