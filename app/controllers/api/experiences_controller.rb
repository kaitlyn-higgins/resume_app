class Api::ExperiencesController < ApplicationController

  def index
    @experiences = Experience.all
    render 'index.json.jbuilder'
  end

  def create
    @experience = Experience.new(
      student_id: params[:student_id],
      title: params[:title],
      company_name: params[:company_name],
      details: params[:details],
      start_date: params[:start_date],
      end_date: params[:end_date]
      )
    if @experience.save
      render 'show.json.jbuilder'
    else
      render json:{errors: @experience.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def show
    @experience = Experience.find(params[:id])
    render 'show.json.jbuilder'
  end

  def update
    @experience = Experience.find(params[:id])
    @experience.title = params[:title] || @experience.title
    @experience.company_name = params[:company_name] || @experience.company_name
    @experience.details = params[:details] || @experience.details
    @experience.start_date = params[:start_date] || @experience.start_date
    @experience.end_date = params[:end_date] || @experience.end_date

    if @experience.save
      render 'show.json.jbuilder'
    else
      render json:{errors: @experience.errors.full_messages}, status: :unprocessable_entity
    end
    
  end

  def destroy
    @experience = Experience.find(params[:id])
    @experience.destroy
    render json:{message: "Experience Deleted."}
  end




end
