class QualificationsController < ApplicationController
  before_action :set_qualification, only: [:show, :edit, :update, :destroy]

  # GET /qualifications
  # GET /qualifications.json
  def index
    @qualifications ||= Qualification.all
  end

  # GET /qualifications/1
  # GET /qualifications/1.json
  def show
  end

  # GET /qualifications/new
  def new
    @profile ||= Profile.find(params[:profile_id])
    @qualification = @profile.qualifications.build
  end

  # GET /qualifications/1/edit
  def edit
    @profile ||= Profile.find(params[:profile_id])
  end

  # POST /qualifications
  # POST /qualifications.json
  def create
    @profile ||= Profile.find(params[:profile_id])
    @qualification = @profile.qualifications.new(qualification_params)
    @qualification.save
  end

  # PATCH/PUT /qualifications/1
  # PATCH/PUT /qualifications/1.json
  def update
    @profile ||= Profile.find(params[:profile_id])
    @qualification.update(qualification_params)
  end

  # DELETE /qualifications/1
  # DELETE /qualifications/1.json
  def destroy
    @profile ||= @qualification.profile
    @qualification.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_qualification
    @qualification ||= Qualification.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def qualification_params
    params.require(:qualification).permit(:qualification, :college_name, :university, :year, :profile_id)
  end
end
