class Api::SkillsController < ApplicationController

  def index
    @skills = Skill.all
    render 'index.json.jbuilder'
  end

  def create
    @skill = Skill.new(
      name: params[:name],
      student_id: params[:student_id]
      )
    if @skill.save
      render 'show.json.jbuilder'
    else
      render json:{errors: @skill.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def show
    @skill = Skill.find(params[:id])
    render 'show.json.jbuilder'
  end

  def update
    @skill = Skill.find(params[:id])
    @skill.name = params[:name] || @skill.name

    if @skill.save
      render 'show.json.jbuilder'
    else
      render json:{errors: @skill.errors.full_messages}, status: :unprocessable_entity
    end    
  end

  def destroy
    @skill = Skill.find(params[:id])
    @skill.destroy
    render json:{message: "Skill Deleted."}
  end

end
