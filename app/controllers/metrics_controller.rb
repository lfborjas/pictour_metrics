class MetricsController < ApplicationController
  def index
    @metrics = Metric.all
  end
end
