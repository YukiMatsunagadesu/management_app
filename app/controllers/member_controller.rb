class MemberController < ApplicationController
  before_action :authenticate_member
  # before_action :authenticate_admin

  def top
    @id=params[:id]
    @member=Member.find(params[:id])
    @attendance=Attendance.where(member_id: @member.id)
  end
  
  def calender
    @id=params[:id]
    @member=Member.find(params[:id])
    @attendance = Attendance.where(member_id: @member.id, work_date: Date.today).last
    
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
  def profile_update
    @id=params[:id]
    @member=Member.find(params[:id])
    @member.name=params[:name]
    @member.mail=params[:mail]
    @member.phone=params[:phone]
    @member.password=params[:password]
    @member.save
    redirect_to("/member/#{params[:id]}")
  end

  def start_time
    @member=Member.find(params[:id])
    @attendance = Attendance.new(work_date: Date.today, start_time: Time.now, member_id: @member.id)
    @attendance.save
    redirect_to("/member/#{@member.id}")
  end

  def rest_start_time
    @member=Member.find(params[:id])
    @attendance = Attendance.where(member_id: @member.id, work_date: Date.today).last
    @attendance.update(rest_start_time: Time.now)
    @attendance.save
    redirect_to("/member/#{@member.id}")
  end
  def rest_end_time
    @member=Member.find(params[:id])
    @attendance = Attendance.where(member_id: @member.id, work_date: Date.today).last
    @attendance.update(rest_end_time: Time.now)
    @attendance.save
    redirect_to("/member/#{@member.id}")
  end
  def end_time
    @member=Member.find(params[:id])
    @attendance = Attendance.where(member_id: @member.id, work_date: Date.today).last
    @attendance.update(end_time: Time.now)
    @attendance.save
    redirect_to("/member/#{@member.id}")
  end
  
  def logout
    if @current_member
      session.delete(:member_id)
      @current_member=nil
    end
    redirect_to("/")
  end

end
