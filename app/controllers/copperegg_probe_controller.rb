class CoppereggProbeController < ApplicationController
  def index
    render :text => request.env['SERVER_NAME'], :layout => false
  end
end