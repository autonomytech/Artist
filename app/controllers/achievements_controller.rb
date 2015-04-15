class AchievementsController < ApplicationController
  before_action :set_achievement, only: [:show, :edit, :update, :destroy]

  # GET /achievements
  # GET /achievements.json
  def index
    @achievements ||= Achievement.all
  end

  # GET /achievements/1
  # GET /achievements/1.json
  def show
  end

  # GET /achievements/new
  def new
    @profile ||= Profile.find(params[:profile_id])
    @achievement = @profile.achievements.build
  end

  # GET /achievements/1/edit
  def edit
    @profile ||= Profile.find(params[:profile_id])
  end

  # POST /achievements
  # POST /achievements.json
  def create
    @profile ||= Profile.find(params[:profile_id])
    @achievement = @profile.achievements.new(achievement_params)
    @achievement.save
  end

  # PATCH/PUT /achievements/1
  # PATCH/PUT /achievements/1.json
  def update
    @profile ||= Profile.find(params[:profile_id])
    @achievement.update(achievement_params)
  end

  # DELETE /achievements/1
  # DELETE /achievements/1.json
  def destroy
    @profile ||= @achievement.profile
    @achievement.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_achievement
    @achievement ||= Achievement.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def achievement_params
    params.require(:achievement).permit(:name, :date, :details, :profile_id)
  end
end
