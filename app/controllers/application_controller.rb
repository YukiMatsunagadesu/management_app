class ApplicationController < ActionController::Base
    before_action :set_current_member
    before_action :authenticate_member

    # before_action :authenticate_admin

    def set_current_member
        @current_member = Member.find_by(id: session[:member_id])
    end
      

    def authenticate_member
        if
          @current_member.nil? || !@current_member.authority && (@current_member.id != params[:id].to_i && request.path != '/')
          redirect_to("/")
        end
    end    
end
