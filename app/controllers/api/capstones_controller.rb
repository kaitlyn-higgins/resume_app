class Api::CapstonesController < ApplicationController
  before_action :authenticate_user, only: [:create, :update, :destroy]

  def index
    @capstones = Capstone.all
    render 'index.json.jbuilder'
  end

  def show
    @capstone = Capstone.find(params[:id])
    render 'show.json.jbuilder'
  end

  def create

    @capstone = Capstone.new(
      name: params[:name],
      description: params[:description],
      url: params[:url],
      screenshot: params[:screenshot],
      student_id: params[:student_id],
      )

    if @capstone.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @capstone.errors.full_messages}, status: :unprocessable_entitiy
    end

  end


  def update

    @capstone = Capstone.find(params[:id])

    @capstone.name = params[:name] || @capstone.name
    @capstone.description = params[:description] || @capstone.description
    @capstone.url = params[:url] || @capstone.url
    @capstone.screenshot = params[:screenshot] || @capstone.screenshot
    @capstone.student_id = params[:student_id] || @capstone.student_id

    if @capstone.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @capstone.errors.full_messages}, status: :unprocessable_entitiy
    end
    
  end

  def destroy
    @capstone = Capstone.find(params[:id])
    @capstone.destroy
    render json: {message: "Capstone Destroyed"}    
  end

end
