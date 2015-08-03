class CadetshipsController < ApplicationController
  before_action :set_cadetship, only: [:show, :edit, :update, :destroy]

  # GET /cadetships
  # GET /cadetships.json
  def index
    @cadetships = Cadetship.all
  end

  # GET /cadetships/1
  # GET /cadetships/1.json
  def show
  end

  # GET /cadetships/new
  def new
    @cadetship = Cadetship.new
  end

  # GET /cadetships/1/edit
  def edit
  end

  # POST /cadetships
  # POST /cadetships.json
  def create
    @cadetship = Cadetship.new(cadetship_params)

    respond_to do |format|
      if @cadetship.save
        format.html { redirect_to @cadetship, notice: 'Cadetship was successfully created.' }
        format.json { render :show, status: :created, location: @cadetship }
      else
        format.html { render :new }
        format.json { render json: @cadetship.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cadetships/1
  # PATCH/PUT /cadetships/1.json
  def update
    respond_to do |format|
      if @cadetship.update(cadetship_params)
        format.html { redirect_to @cadetship, notice: 'Cadetship was successfully updated.' }
        format.json { render :show, status: :ok, location: @cadetship }
      else
        format.html { render :edit }
        format.json { render json: @cadetship.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cadetships/1
  # DELETE /cadetships/1.json
  def destroy
    @cadetship.destroy
    respond_to do |format|
      format.html { redirect_to cadetships_url, notice: 'Cadetship was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cadetship
      @cadetship = Cadetship.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cadetship_params
      params.require(:cadetship).permit(:title, :organisation, :year_commenced, :year_ended, :student_profile_id)
    end
end
