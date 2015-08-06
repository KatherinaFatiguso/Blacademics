class AudiencesController < ApplicationController
  before_action :set_audience, only: [:show, :edit, :update, :destroy]

  # GET /audiences
  # GET /audiences.json
  def index
    @audiences = Audience.all
  end

  # GET /audiences/1
  # GET /audiences/1.json
  def show
  end

  # GET /audiences/new
  def new
    @audience = Audience.new
  end

  # GET /audiences/1/edit
  def edit
  end

  # POST /audiences
  # POST /audiences.json
  def create
    @audience = Audience.new(audience_params)

    respond_to do |format|
      if @audience.save
        format.html { redirect_to @audience.event, notice: 'Audience was successfully created.' }
        format.json { render :show, status: :created, location: @audience.event }
      else
        format.html { render :new }
        format.json { render json: @audience.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /audiences/1
  # PATCH/PUT /audiences/1.json
  def update
    respond_to do |format|
      if @audience.update(audience_params)
        format.html { redirect_to @audience.event, notice: 'Audience was successfully updated.' }
        format.json { render :show, status: :ok, location: @audience.event }
      else
        format.html { render :edit }
        format.json { render json: @audience.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /audiences/1
  # DELETE /audiences/1.json
  def destroy
    @audience.destroy
    respond_to do |format|
      format.html { redirect_to @audience.event, notice: 'Audience was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_audience
      @audience = Audience.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def audience_params
      params.require(:audience).permit(:pre_tertiary, :uni_prep, :ugrad_direct_access_atar_op, :ugrad_indirect_access_pathway, :ugrad_indirect_access_enabling, :ugrad_indirect_access_indigenous, :masters, :honours, :phd, :internship, :cadetship, :traineeship, :job, :event_id)
    end
end
