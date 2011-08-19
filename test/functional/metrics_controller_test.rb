require 'test_helper'

class MetricsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  test "should create a metric instance" do
    data = {"token" => '98ceae6c', "metric"=>{"format"=>"[text/html]", 
            "user_agent"=>"Mozilla/5.0 (X11; Linux i686) AppleWebKit/535.1 (KHTML, like Gecko) Chrome/13.0.782.107 Safari/535.1", "path"=>"", "method"=>"GET", "remote_ip"=>"74.66.224.39", "parameters"=>"{\"username\"=>\"rbreve\", \"id\"=>\"058411\"}", "user_id"=>"52", "username"=>"lfbr", "session_id"=>"f3f3608026f849baadc19225c6458646", "action"=>"show", "controller"=>"tours", "response_status"=>"200", "when"=>"2011-08-19 14:40:15 -0500", "duration"=>"0.276179246"}}

    assert_difference('Metric.count') do
      post :create, data
    end
  end
end
