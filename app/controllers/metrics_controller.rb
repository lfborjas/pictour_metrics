class MetricsController < ApplicationController
  before_filter :login_required, :only => [:index] 
  before_filter :admin_required, :only => [:index]
  protect_from_forgery :except => [:create]
  def index
    @metrics = Metric.order 'created_at DESC'
  end

  def create
    @metric = Metric.new.from_json(Base64.decode64(params[:data])) if params[:token] == '98ceae6c'
    @metric.save
    render :nothing => true
  end

  private
  def admin_required
    redirect_to("http://pictour.us") unless current_user.try(:is_admin)
  end
end
