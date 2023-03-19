class AdminController < ApplicationController
  def index
    @members=Member.all
  end

  def today
    @members=Member.all
  end

  def application
  end

  def other_application
  end

  def employeelist
    @members=Member.all
   
  end

  def employeelist_edit
    @member=Member.find(params[:id])
  end
  
  def employeelist_update
    @member = Member.find(params[:id])
    @member.name = params[:name]
    @member.phone = params[:phone]
    @member.mail = params[:mail]
    @member.member_type = params[:member_type]
    @member.save
    redirect_to("/admin/employeelist")
  end

  def employeelist_delete
    @member=Member.find(params[:id])
    @member.destroy
    redirect_to("/admin/employeelist")
  end

  def management
    @members=Member.all
  end

  def schedule
    @members=Member.all
  end
  def schedule_new
    @member=Member.find(params[:id])  
    @attendance = Attendance.where(member_id: @member.id, work_date: Date.today).last
  end

  def new_member
  end

  def member_create
    @member=Member.new(name: params[:name],member_type: params[:member_type],mail:params[:mail],phone: params[:phone],password: params[:password])
    @member.save
    redirect_to("/admin/employeelist")
  end
  
end
