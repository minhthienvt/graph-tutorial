class GroupController < ApplicationController
  include GraphHelper

  def index
    @groups = get_groups_events access_token || []

    respond_to do |format|
      format.html
      format.json { render json: @groups }
    end
  rescue RuntimeError => e
    @errors = [
        {
            message: 'Microsoft Graph returned an error getting events.',
            debug: e
        }
    ]
    enddef index
  end
end
