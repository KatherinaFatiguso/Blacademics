class PagesController < ApplicationController
  skip_before_action :authenticate_user!, except: :admin

  def home
    @events = Listing.event_type.approved.limit(3)
    @programs = Listing.program_type.approved.limit(3)
    @jobs = Listing.job_type.approved.limit(3)
  end

  def admin

  end

  def events
    if params[:filter] == 'draft'
      @events = Listing.event_type.draft.page(params[:page]).per(10)
    elsif params[:filter] == 'approved'
      @events = Listing.event_type.approved.page(params[:page]).per(10)
    elsif params[:filter] == 'expired'
      @events = Listing.event_type.expired.page(params[:page]).per(10)
    elsif params[:filter] == 'archived'
      @events = Listing.event_type.archived.page(params[:page]).per(10)
    else
      @events = Listing.event_type.page(params[:page]).per(10)
    end
  end

  def programs
    if params[:filter] == 'draft'
      @programs = Listing.program_type.draft.page(params[:page]).per(10)
    elsif params[:filter] == 'approved'
      @programs = Listing.program_type.approved.page(params[:page]).per(10)
    elsif params[:filter] == 'expired'
      @programs = Listing.program_type.expired.page(params[:page]).per(10)
    elsif params[:filter] == 'archived'
      @programs = Listing.program_type.archived.page(params[:page]).per(10)
    else
      @programs = Listing.program_type.page(params[:page]).per(10)
    end
  end

  def jobs
    if params[:filter] == 'draft'
      @jobs = Listing.job_type.draft.page(params[:page]).per(10)
    elsif params[:filter] == 'approved'
      @jobs = Listing.job_type.approved.page(params[:page]).per(10)
    elsif params[:filter] == 'expired'
      @jobs = Listing.job_type.expired.page(params[:page]).per(10)
    elsif params[:filter] == 'archived'
      @jobs = Listing.job_type.archived.page(params[:page]).per(10)
    else
      @jobs = Listing.job_type.page(params[:page]).per(10)
    end
  end

  def contact
  end

  def approved_events
    @events = Listing.event_type.approved
    if params[:search]
      @events = Listing.event_type.approved.search(params[:search]).order("created_at DESC")
    else
      @events = Listing.event_type.approved.order("created_at DESC")
    end
  end
  def approved_programs
    @programs = Listing.program_type.approved
    if params[:search]
      @programs = Listing.program_type.approved.search(params[:search]).order("created_at DESC")
    else
      @programs = Listing.program_type.approved.order("created_at DESC")
    end
  end
  def approved_jobs
    @jobs = Listing.job_type.approved
    if params[:search]
      @jobs = Listing.job_type.approved.search(params[:search]).order("created_at DESC")
    else
      @jobs = Listing.job_type.approved.order("created_at DESC")
    end
  end
end
