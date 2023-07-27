require 'mailtrap'
class ApplicationController < ActionController::Base
	before_action :authenticate_welcome!
end
