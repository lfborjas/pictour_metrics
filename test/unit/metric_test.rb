require 'test_helper'

class MetricTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Metric.new.valid?
  end
end
