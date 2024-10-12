class ApplicationController < ActionController::Base
  before_action -> { sleep 5}
end
