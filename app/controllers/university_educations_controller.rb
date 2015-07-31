class UniversityEducationsController < ApplicationController
  before_action :set_university_education, only: [:show, :edit, :update, :destroy]

  # GET /university_educations
  # GET /university_educations.json
  def index
    @university_educations = UniversityEducation.all
  end

  # GET /university_educations/1
  # GET /university_educations/1.json
  def show
  end

  # GET /university_educations/new
  def new
    @university_education = UniversityEducation.new
  end

  # GET /university_educations/1/edit
  def edit
  end

  # POST /university_educations
  # POST /university_educations.json
  def create
    @university_education = UniversityEducation.new(university_education_params)
    respond_to do |format|
      if @university_education.save
        format.html { redirect_to @university_education, notice: 'University education was successfully created.' }
        format.json { render :show, status: :created, location: @university_education }
      else
        format.html { render :new }
        format.json { render json: @university_education.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /university_educations/1
  # PATCH/PUT /university_educations/1.json
  def update
    respond_to do |format|
      if @university_education.update(university_education_params)
        format.html { redirect_to @university_education, notice: 'University education was successfully updated.' }
        format.json { render :show, status: :ok, location: @university_education }
      else
        format.html { render :edit }
        format.json { render json: @university_education.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /university_educations/1
  # DELETE /university_educations/1.json
  def destroy
    @university_education.destroy
    respond_to do |format|
      format.html { redirect_to @university_education.student_profile, notice: 'University education was successfully destroyed.' }
      # format.html { redirect_to university_educations_url, notice: 'University education was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_university_education
      @university_education = UniversityEducation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def university_education_params
      params.require(:university_education).permit(:degree, :field_of_study, :university, :school, :year_started, :year_ended, :student_profile_id)
    end
end
