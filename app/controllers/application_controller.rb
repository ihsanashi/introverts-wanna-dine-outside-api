class ApplicationController < ActionController::API
  def authenticate
    if request.headers['Authorization']

    else
      render json: { message: 'No authorization header sent' }, status: :forbidden
    end
  end
end
