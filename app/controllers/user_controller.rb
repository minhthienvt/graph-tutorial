class UserController < ApplicationController
  include GraphHelper

  def index
    @users = get_users_events access_token || []

    respond_to do |format|
      format.html
      format.json { render json: @users }
    end
  rescue RuntimeError => e
    @errors = [
        {
            message: 'Microsoft Graph returned an error getting events.',
            debug: e
        }
    ]
  end
end
