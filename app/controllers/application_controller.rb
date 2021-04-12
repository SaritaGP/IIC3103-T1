class ApiError < StandardError; end

class ApplicationController < ActionController::Base
  rescue_from(ApiError, with: :error_master)

  def error_master
    redirect_to(errors_path)
  end

  def http_get(url)
    response = HTTParty.get(url)

    case response.code
      when 400...600
        flash[:alert] = "Error #{response.code}"
        raise ApiError.new 
    end

    return response
  end
end
