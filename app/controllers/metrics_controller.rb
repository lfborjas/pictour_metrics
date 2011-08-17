class MetricsController < ApplicationController
  before_filter :login_required 
  before_filter :admin_required
  def index
    @metrics = Metric.all
  end

  private
  def admin_required
    redirect_to("http://pictour.us") unless current_user.try(:is_admin)
  end
end
