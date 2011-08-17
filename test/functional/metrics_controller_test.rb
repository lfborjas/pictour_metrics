require 'test_helper'

class MetricsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end
end
