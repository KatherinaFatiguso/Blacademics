class ListingsController < ApplicationController
  skip_before_action :authenticate_user!, only: :show
  before_action :set_listing, only: [:add_audience_to, :remove_audience_from, :show, :edit, :update, :destroy]
  impressionist :actions=>[:show]
  # GET /listings
  # GET /listings.json
  def index
    @listings = current_user.organisation.listings
    @events = @listings.event_type
    @jobs = @listings.job_type
    @programs = @listings.program_type
  end

  # GET /listings/1
  # GET /listings/1.json
  def show
  end

  # GET /listings/new
  def new
    if params[:listing_type] && params[:org]
      @listing = Listing.new
      @audiences = Audience.all
      @audiences.each do |audience|
        @listing.audiences << audience
      end

    else
      redirect_to organisation_path(current_user.organisation)
    end

  end

  # GET /listings/1/edit
  def edit
    @audiences = Audience.all
  end

  # POST /listings
  # POST /listings.json
  def create
    @listing = Listing.new(listing_params)
    @listing.organisation_id = current_user.organisation.id
    respond_to do |format|
      if @listing.save
        format.html { redirect_to @listing, notice: 'Listing was successfully created.' }
        format.json { render :show, status: :created, location: @listing }
      else
        format.html { render :new }
        format.json { render json: @listing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /listings/1
  # PATCH/PUT /listings/1.json
  def update
    respond_to do |format|
      if @listing.update(listing_params)
        format.html { redirect_to @listing, notice: 'Listing was successfully updated.' }
        format.json { render :show, status: :ok, location: @listing }
      else
        format.html { render :edit }
        format.json { render json: @listing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /listings/1
  # DELETE /listings/1.json
  def destroy
    @listing.destroy
    respond_to do |format|
      format.html { redirect_to listings_url, notice: 'Listing was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def add_audience_to
  	@audience = Audience.find(params[:audience])
  	@listing.audiences << @audience
  	redirect_to :back
  end

  def remove_audience_from
  	@audience = Audience.find(params[:audience])
  	@listing.audiences.delete(@audience)
  	redirect_to :back
  end

  def draft_events
    @listings = Listing.all
  end

  def newly_expired_listings
    where('expired_at > ? && status != ?', Date.today, 'expired')
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_listing
      @listing = Listing.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def listing_params
      params.require(:listing).permit(:image, :listing_type, :title, :short_description, :long_description, :contact_name, :contact_email, :contact_phone, :website, :start_time, :end_time, :ticket_required, :official_hastag, :facebook_url, :twitter_handle, :instagram_handle, :job_category, :job_type, :salary, :organisation_id, :street_address, :suburb, :state, :postcode, :status, :impressions_count, :company_name, :ticket_website, :expired_at, :audience_ids => [])
    end
end
