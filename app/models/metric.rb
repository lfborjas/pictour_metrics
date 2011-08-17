class Metric < ActiveRecord::Base
  attr_accessible :format, :parameters, :user_agent, :path, :method, :remote_ip, :user_id, :session_id, :action, :controller, :response_status, :when, :duration, :username
end
