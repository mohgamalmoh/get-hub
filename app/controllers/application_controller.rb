class ApplicationController < ActionController::API

  def get_response (code,message,state,data)
    return :json => {:status => {:code => code , :message => message , :state => state} , :data => data},:status => code
  end

end
