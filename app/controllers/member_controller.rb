class MemberController < ApplicationController
  def top
    @id=params[:id]
    @member=Member.find(params[:id])
  end
  def calender
    @id=params[:id]
    @member=Member.find(params[:id])
  end
  def application
    @id=params[:id]
    @member=Member.find(params[:id])
  end
  def attendance_management
    @id=params[:id]
    @member=Member.find(params[:id])
  end
  def profile_edit
    @id=params[:id]
    @member=Member.find(params[:id])
  end

end
