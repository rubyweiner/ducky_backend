class SkillsController < ApplicationController
  skip_before_action :authorized

  def index
    @skills = Skill.all
    render json: @skills
  end

  def show
    @skill = Skill.find(params[:id])
    render json: @skill
  end

end
