class Api::EducationsController < ApplicationController
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

    @education.save
    redirect_to "/educations/#{@education.id}"
  end

  def update
    @education = Education.find(params[:id])

    @education.start_date = params[:start_date]
    @education.end_date = params[:end_date]
    @education.degree = params[:degree]
    @education.university = params[:university]
    @education.details = params[:details]

    @education.save
    redirect_to "/educations/#{@education.id}"
  end

  def destroy
    @education = Education.find(params[:id])
    @education.destroy
    redirect_to "/educations"
  end
end